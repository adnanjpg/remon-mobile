part of 'local_db_service.dart';

extension Account on LocalDbService {
  Future<int?> addAccount({
    required AccountModel account,
  }) async {
    try {
      final newAccount = await db.writeAsync(
        (isar) {
          AccountModel newAccount;

          if (account.id == AccountModel.invalidTempId) {
            final id = isar.accountModels.autoIncrement();
            newAccount = account.copyWith(
              id: id,
            );
          } else {
            newAccount = account;
          }

          isar.accountModels.put(
            newAccount,
          );

          return newAccount;
        },
      );

      return newAccount.id;
    } catch (e) {
      logger.e(e);

      return null;
    }
  }

  Future<int?> updateAccount({
    required AccountModel account,
  }) async {
    return addAccount(
      account: account,
    );
  }

  // TODO(adnanjpg): replace once this issue resolves
  // https://github.com/isar/isar/issues/1478
  Stream<int> watchAccountsCount() {
    try {
      final count = db.accountModels.where().watch(
            fireImmediately: true,
          );

      return count.map(
        (event) {
          return event.length;
        },
      );
    } catch (e) {
      logger.e(e);

      return const Stream.empty();
    }
  }

  Stream<bool> watchHasAnyAccount() {
    try {
      final accountsCountStream = watchAccountsCount();

      final hasAnyAccountStream = accountsCountStream.map(
        (event) {
          return event > 0;
        },
      );

      return hasAnyAccountStream;
    } catch (e) {
      logger.e(e);

      return const Stream.empty();
    }
  }

  AccountModel? getFirstAccount() {
    try {
      final accounts = db.accountModels.where().findFirst();
      return accounts;
    } catch (e) {
      logger.e(e);

      return null;
    }
  }

  Stream<List<AccountModel>> watchAllAccounts() {
    try {
      final accounts = db.accountModels.where().watch(
            fireImmediately: true,
          );

      return accounts;
    } catch (e) {
      logger.e(e);

      return const Stream.empty();
    }
  }

  Stream<AccountModel> watchAccount({
    required int accountId,
  }) {
    try {
      final accounts = db.accountModels
          .where()
          .idEqualTo(accountId)
          .watch(fireImmediately: true);

      final account = accounts.map(
        (event) {
          return event.first;
        },
      );

      return account;
    } catch (e) {
      logger.e(e);

      return const Stream.empty();
    }
  }

  Future<AccountModel?> getAccountById({
    required int accountId,
  }) async {
    try {
      final account = db.accountModels.get(
        accountId,
      );

      return account;
    } catch (e) {
      logger.e(e);

      return null;
    }
  }

  Future<bool> deleteAccount({
    required AccountModel account,
  }) async {
    try {
      await db.writeAsync(
        (isar) {
          isar.accountModels.delete(
            account.id,
          );
        },
      );

      return true;
    } catch (e) {
      logger.e(e);

      return false;
    }
  }
}
