import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/home_state.dart';

final homeStateProvider = StateNotifierProvider<HomeStateNotifier, HomeState>(
  HomeStateNotifier.new,
);

class HomeStateNotifier extends StateNotifier<HomeState> {
  final Ref ref;
  HomeStateNotifier(this.ref) : super(HomeState.initial());
}
