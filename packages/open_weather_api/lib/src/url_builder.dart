class UrlBuilder {
  const UrlBuilder({
    String? baseUrl,
  }) : _baseUrl = baseUrl ?? 'https://api.openweathermap.org/data/2.5';

  final String _baseUrl;

  // Ideally, this api key is stored in the environment and not checked into GIT.
  final String API_KEY = "";

  String buildGetCurrentWeatherUrl(String longitude, String latitude) {
    return '$_baseUrl/weather?lat=$latitude&lon=$longitude&appid=$API_KEY';
  }
}
