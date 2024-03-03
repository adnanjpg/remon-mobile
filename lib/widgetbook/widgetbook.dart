// widgetbook.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remon_mobile/app.dart';
import 'package:remon_mobile/features/app_init/app_init_prov.dart';
import 'package:remon_mobile/ui/widgets/loading_screen.dart';
import 'package:remon_mobile/utils/app_theme.dart';
// Import the generated directories variable
import 'package:remon_mobile/widgetbook/widgetbook.directories.g.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

void main() {
  // ignore: missing_provider_scope
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      // Use the generated directories variable
      directories: directories,
      addons: const [],
      appBuilder: (context, child) {
        return ProviderScope(
          child: _App(
            child,
          ),
        );
      },
    );
  }
}

class _App extends ConsumerStatefulWidget {
  const _App(this.child);
  final Widget child;

  @override
  ConsumerState<_App> createState() => _AppState();
}

class _AppState extends ConsumerState<_App> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref.read(appInitializerProv).initForWidgetbook();
  }

  @override
  Widget build(BuildContext context) {
    final inited = ref.watch(appInitedProv);

    final appTheme = ref.watch(appThemeProv).lightTheme;

    if (!inited) {
      return MaterialApp(
        theme: appTheme,
        home: const LoadingScreen(),
      );
    }

    return EasyLocWrapper(
      child: Builder(
        builder: (context) {
          return MaterialApp(
            localizationsDelegates: [
              ...context.localizationDelegates,
            ],
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            debugShowMaterialGrid: false,
            themeMode: ThemeMode.dark,
            theme: appTheme,
            home: Material(
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}
