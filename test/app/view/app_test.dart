import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/weather/view/weather_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      // await tester.pumpWidget(const App());
      expect(find.byType(WeatherAppScreen), findsOneWidget);
    });
  });
}
