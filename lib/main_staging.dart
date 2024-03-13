import 'package:open_weather_repository/open_weather_repository.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/bootstrap.dart';

void main() {
  bootstrap(() => App(
        weatherRepository: WeatherAppRepository(),
      ));
}
