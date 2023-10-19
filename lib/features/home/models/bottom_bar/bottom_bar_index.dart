enum BottomBarIndex {
  home,
  settings;

  bool get isHome => this == BottomBarIndex.home;
  bool get isSettings => this == BottomBarIndex.settings;
}
