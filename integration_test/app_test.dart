import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:remon_mobile/app.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets(
      "expect there's an ip field",
      (tester) async {
        await tester.pumpWidget(const TheApp());

        await tester.pumpAndSettle(
          const Duration(seconds: 1),
        );

        const ipFieldKey = Key('add_device_screen_ip_field');
        const portFieldKey = Key('add_device_screen_port_field');
        const cameraScannerFieldKey =
            Key('add_device_screen_otp_camera_scanner');
        const otpUrlFieldKey = Key('add_device_screen_otp_url_field');
        const otpFieldKey = Key('add_device_screen_otp_field');

        const submitBtnKey = Key('add_device_screen_submit_btn');

        {
          // the initial page is the add device screen,
          // first it will show the ip and port fields
          // the other fields will be shown in the next
          // steps, after the user fills the ip and port
          // fields and press the next button

          expect(find.byKey(ipFieldKey), findsOneWidget);
          expect(find.byKey(portFieldKey), findsOneWidget);

          expect(find.byKey(cameraScannerFieldKey), findsNothing);
          expect(find.byKey(otpUrlFieldKey), findsNothing);
          expect(find.byKey(otpFieldKey), findsNothing);
        }

        {
          // fill in the ip and port fields
          await tester.pumpAndSettle(
            const Duration(seconds: 1),
          );

          const validIpVal = '192.168.1.1';
          const validPortVal = '8080';

          await tester.enterText(find.byKey(ipFieldKey), validIpVal);
          await tester.pumpAndSettle(
            const Duration(milliseconds: 500),
          );
          await tester.enterText(find.byKey(portFieldKey), validPortVal);
        }

        {
          // press the next button
          await tester.pumpAndSettle(
            const Duration(seconds: 1),
          );
          await tester.tap(find.byKey(submitBtnKey));

          await tester.pumpAndSettle(
            const Duration(seconds: 5),
          );
        }
      },
    );
  });
}
