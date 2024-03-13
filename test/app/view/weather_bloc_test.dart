import 'package:domain_models/domain_models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_weather_repository/open_weather_repository.dart';
import 'package:weather_app/weather/bloc/weather_app_bloc.dart';

class MockWeatherAppRepository extends Mock implements WeatherAppRepository {}

void main() {
  group('WeatherAppBloc', () {
    late WeatherAppBloc weatherAppBloc;
    late MockWeatherAppRepository mockWeatherAppRepository;

    setUp(() {
      mockWeatherAppRepository = MockWeatherAppRepository();
      weatherAppBloc =
          WeatherAppBloc(weatherAppRepository: mockWeatherAppRepository);
    });

    tearDown(() {
      weatherAppBloc.close();
    });

    test('initial state is WeatherAppInitial', () {
      expect(weatherAppBloc.state, equals(WeatherAppInitial()));
    });

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [FetchCitiesSuccess] when FetchCities is added and successful',
      build: () {
        when(() => mockWeatherAppRepository.fetchCachedCities())
            .thenAnswer((_) async {
          return [const City(id: 1)];
        });
        return weatherAppBloc;
      },
      act: (bloc) => bloc.add(FetchCities()),
      expect: () => [FetchCityLoading(), isA<FetchCitiesSuccess>()],
    );

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [FetchWeatherForCitySuccess] when FetchWeatherForCity is added and successful',
      build: () {
        when(() => mockWeatherAppRepository.fetchCachedWeatherForCity(1))
            .thenAnswer((_) async {
          return const WeatherData(id: "1", cityId: "1");
        });
        return weatherAppBloc;
      },
      act: (bloc) => bloc.add(const FetchWeatherForCity(city: City(id: 1))),
      expect: () =>
          [FetchWeatherForCityLoading(), isA<FetchWeatherForCitySuccess>()],
    );

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [CreateCarouselDataLoading, CreateCarouselDataSuccess] when CreateCarouselData event is added and repository call succeeds',
      build: () {
        when(() => mockWeatherAppRepository.addCarouselData(1, 1))
            .thenAnswer((_) async {
          return const CarouselData(id: 1, cityId: 1, weatherId: 1);
        });
        return weatherAppBloc;
      },
      act: (bloc) => bloc.add(const CreateCarouselData(1, 1)),
      expect: () => [
        CreateCarouselDataLoading(),
        const CreateCarouselDataSuccess(),
      ],
      verify: (_) {
        verify(() => mockWeatherAppRepository.addCarouselData(1, 1)).called(1);
      },
    );

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [CreateCarouselDataLoading, CreateCarouselDataError] when CreateCarouselData event is added and repository call fails',
      build: () {
        when(() => mockWeatherAppRepository.addCarouselData(any(), any()))
            .thenThrow(Exception('Test error'));
        return weatherAppBloc;
      },
      act: (bloc) => bloc.add(const CreateCarouselData(1, 1)),
      expect: () => [
        CreateCarouselDataLoading(),
        isA<CreateCarouselDataError>(),
      ],
    );

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [FetchUserWeatherLoading, FetchUserWeatherSuccess] when FetchUserCurrentWeather event is added and repository call succeeds',
      build: () {
        return weatherAppBloc;
      },
      act: (bloc) {
        when(() => mockWeatherAppRepository.fetchWeatherForUser())
            .thenAnswer((_) async => const WeatherData(id: "1", cityId: "1"));
        bloc.add(const FetchUserCurrentWeather());
      },
      expect: () => [
        FetchUserWeatherLoading(),
        isA<FetchUserWeatherSuccess>(),
      ],
      verify: (_) {
        verify(() => mockWeatherAppRepository.fetchWeatherForUser()).called(1);
      },
    );

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [FetchUserWeatherLoading, FetchUserWeatherError] when FetchUserCurrentWeather event is added and repository call fails',
      build: () {
        when(() => mockWeatherAppRepository.fetchWeatherForUser())
            .thenThrow(Exception('Test error'));
        return weatherAppBloc;
      },
      act: (bloc) => bloc.add(const FetchUserCurrentWeather()),
      expect: () => [
        FetchUserWeatherLoading(),
        isA<FetchUserWeatherError>(),
      ],
    );

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [RemoveCarouselDataLoading, RemoveCarouselDataSuccess] when RemoveCarouselData event is added and repository call succeeds',
      build: () {
        when(() => mockWeatherAppRepository.removeSavedCarouselData(1))
            .thenAnswer((invocation) => Future.value());
        return weatherAppBloc;
      },
      act: (bloc) => bloc.add(const RemoveCarouselData(1)),
      expect: () => [
        RemoveCarouselDataLoading(),
        const RemoveCarouselDataSuccess(),
      ],
      verify: (_) {
        verify(() => mockWeatherAppRepository.removeSavedCarouselData(1))
            .called(1);
      },
    );

    blocTest<WeatherAppBloc, WeatherAppState>(
      'emits [RemoveCarouselDataLoading, RemoveCarouselDataError] when RemoveCarouselData event is added and repository call fails',
      build: () {
        when(() => mockWeatherAppRepository.removeSavedCarouselData(any()))
            .thenThrow(Exception('Test error'));
        return weatherAppBloc;
      },
      act: (bloc) => bloc.add(const RemoveCarouselData(1)),
      expect: () => [
        RemoveCarouselDataLoading(),
        isA<RemoveCarouselDataError>(),
      ],
    );
  });
}
