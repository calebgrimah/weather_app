import 'package:domain_models/domain_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/weather/components/city_list_item.dart';

void main() {
  testWidgets('CityCard displays city name and capital',
      (WidgetTester tester) async {
    // Create a city object for testing
    final city = City(city: 'Test City', capital: 'Test Capital');

    // Build the CityCard widget
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: CityCard(
            city: city,
            onClick: () {},
          ),
        ),
      ),
    );

    // Find the ListTile widget
    final tileFinder = find.byType(ListTile);

    // Verify that the ListTile widget exists
    expect(tileFinder, findsOneWidget);

    // Verify that the city name is displayed correctly
    expect(find.text('Test City'), findsOneWidget);

    // Verify that the capital name is displayed correctly
    expect(find.text('Test Capital'), findsOneWidget);
  });

  testWidgets('CityCard onTap callback is called when tapped',
      (WidgetTester tester) async {
    // Create a city object for testing
    final city = City(city: 'Test City', capital: 'Test Capital');

    // Create a variable to track if onTap callback is called
    bool onTapCalled = false;

    // Build the CityCard widget
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: CityCard(
            city: city,
            onClick: () {
              onTapCalled = true;
            },
          ),
        ),
      ),
    );

    // Find the ListTile widget
    final tileFinder = find.byType(ListTile);

    // Tap the ListTile widget
    await tester.tap(tileFinder);

    // Verify that the onTap callback is called
    expect(onTapCalled, isTrue);
  });
}
