import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quel_est_ce_code_postal/screens/home_screen.dart';
import 'package:quel_est_ce_code_postal/screens/info_screen.dart';

Widget createInfoScreen() => MaterialApp(
      home: InfoScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        InfoScreen.routeName: (context) => InfoScreen(),
      },
    );

void main() {
  group('Info Screen Widget tests', () {
    testWidgets('testing if the information text shows up', (tester) async {
      await tester.pumpWidget(createInfoScreen());
      await tester.pumpAndSettle();
      expect(find.text('Informations'), findsOneWidget);
    });

    testWidgets('testing if the return button shows up', (tester) async {
      await tester.pumpWidget(createInfoScreen());
      await tester.pumpAndSettle();
      expect(find.widgetWithText(ElevatedButton, 'Retour'), findsOneWidget);
    });

    testWidgets('testing if the return button go to home screen',
        (tester) async {
      await tester.pumpWidget(createInfoScreen());
      await tester.pumpAndSettle();
      expect(find.byType(HomeScreen), findsNothing);

      await tester.tap(
        find.widgetWithText(ElevatedButton, 'Retour'),
      );
      await tester.pumpAndSettle();
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
