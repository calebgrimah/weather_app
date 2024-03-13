import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/util/constants.dart';
import 'package:weather_app/weather/bloc/weather_app_bloc.dart';

import '../../util/strings.dart';

class WeatherAppDetailScreen extends StatefulWidget {
  const WeatherAppDetailScreen({super.key});

  @override
  State<WeatherAppDetailScreen> createState() => _WeatherAppDetailScreenState();
}

class _WeatherAppDetailScreenState extends State<WeatherAppDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      maintainBottomViewPadding: true,
      bottom: false,
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        // ),
        backgroundColor: Colors.white,
        body: BlocBuilder<WeatherAppBloc, WeatherAppState>(
          builder: (context, state) {
            if (state is FetchWeatherForCityLoading) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                    ],
                  ),
                ],
              );
            }
            if (state is FetchWeatherForCityError) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(state.error),
                    ],
                  ),
                ],
              );
            }
            if (state is FetchWeatherForCitySuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: BorderRadius.circular(
                          32,
                        ), // Adjust the radius as needed
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            color: Colors.white,
                            imageUrl: AppStrings.weatherIcon(
                              state.weatherData.icon ?? '',
                            ),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            state.weatherData.cityName ?? '',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: AppStrings.appFontFamily,
                            ),
                          ),
                          Text(
                            "${(double.parse(state.weatherData.temperature ?? '0') - 273.15).floorToDouble()}°C",
                            style: theme.textTheme.displayMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: AppStrings.appFontFamily,
                            ),
                          ),
                          Text(
                            state.weatherData.description ?? '',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: AppStrings.appFontFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BlocListener<WeatherAppBloc, WeatherAppState>(
                    listener: (context, state) {
                      if (state is CreateCarouselDataSuccess) {
                        //show success snack bar
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: theme.primaryColor,
                            content: Text(
                              'Yay! Successfully added this weather to the carousel!',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: AppStrings.appFontFamily,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: FilledButton(
                            onPressed: () {
                              context.read<WeatherAppBloc>().add(
                                    CreateCarouselData(
                                      int.parse(state.weatherData.cityId ?? ''),
                                      int.parse(state.weatherData.id ?? ''),
                                    ),
                                  );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24.0,
                                vertical: 16,
                              ),
                              child: Text(
                                "Add to Carousel",
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppStrings.appFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocListener<WeatherAppBloc, WeatherAppState>(
                    listener: (context, state) {
                      if (state is FetchUserWeatherSuccess) {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              // height: MediaQuery.of(context).size.height / 2,
                              decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(
                                  32,
                                ), // Adjust the radius as needed
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CachedNetworkImage(
                                    color: Colors.white,
                                    imageUrl: AppStrings.weatherIcon(
                                      state.userWeather.icon ?? '',
                                    ),
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    state.userWeather.cityName ?? '',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: AppStrings.appFontFamily,
                                    ),
                                  ),
                                  Text(
                                    "${(double.parse(state.userWeather.temperature ?? '0') - 273.15).floorToDouble()}°C",
                                    style:
                                        theme.textTheme.displayMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppStrings.appFontFamily,
                                    ),
                                  ),
                                  Text(
                                    state.userWeather.description ?? '',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: AppStrings.appFontFamily,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, top: 8),
                          child: FilledButton(
                            onPressed: () {
                              context
                                  .read<WeatherAppBloc>()
                                  .add(const FetchUserCurrentWeather());
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24.0,
                                vertical: 16,
                              ),
                              child: Text(
                                "Get my current weather",
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: AppStrings.appFontFamily,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 8),
                        child: FilledButton(
                          onPressed: () {
                            context.read<WeatherAppBloc>().add(FetchCities());
                            context
                                .read<WeatherAppBloc>()
                                .add(const FetchCarouselData());
                            context.go(AppRoute.home);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                              vertical: 16,
                            ),
                            child: Text(
                              "Previous Screen",
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppStrings.appFontFamily,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
            return Container();
          },
          buildWhen: (context, state) {
            return state is FetchWeatherForCityLoading ||
                state is FetchWeatherForCitySuccess ||
                state is FetchWeatherForCityError;
          },
        ),
      ),
    );
  }
}
