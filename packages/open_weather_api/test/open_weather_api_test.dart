import 'package:open_weather_api/open_weather_api.dart';
import 'package:test/test.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  group('OpenWeatherApi', () {
    late OpenWeatherApi openWeatherApi;
    late Dio dio;
    late DioAdapter dioAdapter;

    setUp(() {
      dio = Dio();
      dioAdapter = DioAdapter(dio: dio);
      dio.httpClientAdapter = dioAdapter;
      openWeatherApi = OpenWeatherApi(dio: dio);
    });

    test('getCurrentWeatherInformation', () async {
      final responseData = {'name': 'value'};

      dioAdapter.onGet(
        'https://api.openweathermap.org/data/2.5/weather?lat=0&lon=0&appid=ffd8b4178ad4b65942bec70804a53c32',
        (server) {
          server.reply(200, responseData);
        },
      );
      final result = await openWeatherApi.getCurrentWeatherInformation(
        longitude: '0',
        latittude: '0',
      );
      expect(result.name, 'value');
    });
  });
}
