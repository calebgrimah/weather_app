import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_weather_repository/open_weather_repository.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/weather/view/weather_page.dart';

class MockWeatherAppRepository extends Mock implements WeatherAppRepository {}

void main() {
  late MockWeatherAppRepository mockWeatherAppRepository;

  setUp(() {
    mockWeatherAppRepository = MockWeatherAppRepository();
  });

  group('App', () {
    testWidgets('renders Weather application page', (tester) async {
      await tester.pumpWidget(App(
        weatherRepository: mockWeatherAppRepository,
      ));
      expect(find.byType(WeatherAppScreen), findsOneWidget);
    });
  });
}
