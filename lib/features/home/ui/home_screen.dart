import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/services/api_service.dart';
import 'package:remon_mobile/ui/widgets/error_widget.dart';
import 'package:remon_mobile/ui/widgets/loading_widget.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import '../../../utils/utils.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: defPaddingAll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getStr('home_screen_title'),
            style: Theme.of(context).pageTitle,
          ),
          const _HelloRes(),
        ].joinWidgetList(doubleHeightSizedBoxIndex),
      ),
    );
  }
}

final helloProv = FutureProvider<String?>(
  (ref) async {
    final api = ref.read(apiServiceProv);
    final res = await api.hello();
    return res;
  },
);

class _HelloRes extends ConsumerWidget {
  const _HelloRes();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watcher = ref.watch(helloProv);
    return watcher.when(
      error: ErrWidget.new,
      loading: LoadingWidget.new,
      data: (data) {
        if (data == null) {
          return const Text('Failed to call server');
        }

        return Text(
          'Server says: $data',
        );
      },
    );
  }
}
