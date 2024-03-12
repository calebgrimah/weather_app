class UrlBuilder {
  const UrlBuilder({
    String? baseUrl,
  }) : _baseUrl = baseUrl ?? 'https://api.openweathermap.org/data/2.5';

  final String _baseUrl;

  // Ideally, this api key is stored in the environment and not checked into GIT.
  final String API_KEY = "ffd8b4178ad4b65942bec70804a53c32";

  String buildGetCurrentWeatherUrl(String longitude, String latitude) {
    return '$_baseUrl/weather?lat=$latitude&lon=$longitude&appid=$API_KEY';
  }
}
