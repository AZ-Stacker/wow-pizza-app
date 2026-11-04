import 'package:flutter_test/flutter_test.dart';
import 'package:wow_pizza_app/main.dart';

void main() {
  testWidgets('App starts on the home page', (WidgetTester tester) async {
    await tester.pumpWidget(const WowPizzaApp());
    await tester.pumpAndSettle();

    expect(find.text('WOW Pizza'), findsWidgets);
  });
}
