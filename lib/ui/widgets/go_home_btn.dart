import 'package:flutter/material.dart';
import 'package:remon_mobile/gen/locale_keys.g.dart';

import 'package:remon_mobile/utils/route_table.dart';
import 'package:remon_mobile/utils/utils.dart';

class GoHomeBtn extends StatelessWidget {
  const GoHomeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        while (true) {
          final router = GoRouter.of(context);

          final loc = router.location;

          if (loc == RouteTable.initialLocation) {
            break;
          }

          router.pop();
        }
      },
      child: Text(
        getStr(LocaleKeys.go_back_to_home),
      ),
    );
  }
}
