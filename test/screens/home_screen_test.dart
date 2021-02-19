import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quel_est_ce_code_postal/screens/home_screen.dart';
import 'package:quel_est_ce_code_postal/screens/info_screen.dart';
import 'package:quel_est_ce_code_postal/widgets/search_field/search_field.dart';
import 'package:quel_est_ce_code_postal/widgets/title_panel/title_panel.dart';

Widget createHomeScreen() => MaterialApp(
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        InfoScreen.routeName: (context) => InfoScreen(),
      },
    );

void main() {
  group('Home Screen Widget Tests', () {
    testWidgets('testing if the info floatingActionButton shows up',
        (tester) async {
      await tester.pumpWidget(createHomeScreen());
      await tester.pumpAndSettle();

      expect(find.byType(IconButton), findsOneWidget);
      expect(find.byIcon(Icons.info_outline), findsOneWidget);
    });

    testWidgets('testing if the Title shows up', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      await tester.pumpAndSettle();
      expect(find.byType(TitlePanel), findsOneWidget);
    });

    testWidgets('testing if the SearchField shows up', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      await tester.pumpAndSettle();
      expect(find.byType(SearchField), findsOneWidget);
    });

    testWidgets(
        'testing if the information screen shows up when clicking on info floating button',
        (tester) async {
      await tester.pumpWidget(createHomeScreen());
      await tester.pumpAndSettle();

      expect(find.byType(InfoScreen), findsNothing);
      await tester.tap(find.byIcon(Icons.info_outline));
      await tester.pumpAndSettle(Duration(milliseconds: 500));

      expect(find.byType(InfoScreen), findsOneWidget);
    });
  });
}
