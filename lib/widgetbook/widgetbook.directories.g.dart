// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:remon_mobile/ui/widgets/btns/primary_btn.dart' as _i3;
import 'package:remon_mobile/ui/widgets/btns/text_btn.dart' as _i4;
import 'package:remon_mobile/ui/widgets/primary_field.dart' as _i2;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'ui',
    children: [
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookComponent(
            name: 'PrimaryField',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Primary Field',
                builder: _i2.primaryFieldUseCase,
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'btns',
            children: [
              _i1.WidgetbookComponent(
                name: 'PrimaryBtn',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button',
                    builder: _i3.primaryBtnUseCase,
                  )
                ],
              ),
              _i1.WidgetbookComponent(
                name: 'TextBtn',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Primary Button',
                    builder: _i4.TextBtnUseCase,
                  )
                ],
              ),
            ],
          ),
        ],
      )
    ],
  )
];
