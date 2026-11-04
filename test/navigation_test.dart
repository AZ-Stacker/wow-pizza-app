import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wow_pizza_app/main.dart';
import 'package:wow_pizza_app/screens/about.dart';
import 'package:wow_pizza_app/screens/contact.dart';
import 'package:wow_pizza_app/screens/menu.dart';

void main() {
  testWidgets('Named routes open the correct pages', (tester) async {
    await tester.pumpWidget(const WowPizzaApp());
    await tester.pumpAndSettle();

    final navigator = tester.state<NavigatorState>(find.byType(Navigator));

    navigator.pushNamed('/menu');
    await tester.pumpAndSettle();
    expect(find.byType(MenuPage), findsOneWidget);
    navigator.pop();
    await tester.pumpAndSettle();

    navigator.pushNamed('/about');
    await tester.pumpAndSettle();
    expect(find.byType(AboutPage), findsOneWidget);
    navigator.pop();
    await tester.pumpAndSettle();

    navigator.pushNamed('/contact');
    await tester.pumpAndSettle();
    expect(find.byType(ContactPage), findsOneWidget);
  });
}
