class AppStrings {
  static const String appName = 'Weather App';
  static const String appFontFamily = 'Lufga';
  static const String cities = 'Cities';
  static const String selectCityMessage =
      "Select a city to add a weather reading!";
  static String weatherIcon(String iconType) =>
      "https://openweathermap.org/img/wn/${iconType}@4x.png";
}
