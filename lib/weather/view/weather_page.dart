import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/util/constants.dart';
import 'package:weather_app/util/strings.dart';
import 'package:weather_app/weather/bloc/weather_app_bloc.dart';
import 'package:weather_app/weather/components/city_list_item.dart';

class WeatherAppScreen extends StatefulWidget {
  const WeatherAppScreen({super.key});

  @override
  State<WeatherAppScreen> createState() => _WeatherAppScreenState();
}

class _WeatherAppScreenState extends State<WeatherAppScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          AppStrings.appName,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.primaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: AppStrings.appFontFamily,
          ),
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<WeatherAppBloc, WeatherAppState>(
            builder: (context, state) {
              if (state is FetchCarouselDataSuccess &&
                  state.cityWeather.isNotEmpty) {
                return Container(
                  color: Colors.white,
                  child: CarouselSlider(
                    items: state.cityWeather.map((weather) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 16,
                            ),
                            decoration: BoxDecoration(
                              color: theme.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    weather.city?.city ?? '',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: AppStrings.appFontFamily,
                                    ),
                                  ),
                                  Text(
                                    "${(double.parse(weather.weather?.temperature ?? '0') - 273.15).floorToDouble()}°C",
                                    style:
                                        theme.textTheme.displaySmall?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppStrings.appFontFamily,
                                    ),
                                  ),
                                  Text(
                                    weather.weather?.description ?? '',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: AppStrings.appFontFamily,
                                    ),
                                  ),
                                  BlocListener<WeatherAppBloc, WeatherAppState>(
                                    listener: (context, state) {
                                      if (state is RemoveCarouselDataSuccess) {
                                        //fetch carousel data
                                        context.read<WeatherAppBloc>().add(
                                              FetchCarouselData(),
                                            );
                                        //show snackbar
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            backgroundColor: theme.primaryColor,
                                            content: Text(
                                              'Yay! Successfully removed this weather',
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                    AppStrings.appFontFamily,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    listenWhen: (context, state) {
                                      return state is RemoveCarouselDataSuccess;
                                    },
                                    child: IconButton(
                                      onPressed: () {
                                        context.read<WeatherAppBloc>().add(
                                            RemoveCarouselData(
                                                weather.id ?? -900));
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.width / 1.7,
                      enableInfiniteScroll: true,
                      padEnds: true,
                    ),
                  ),
                );
              }
              return Container(
                height: MediaQuery.of(context).size.width / 1.7,
                color: Colors.white,
                child: Center(
                  child: Text(
                    AppStrings.selectCityMessage,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontFamily: AppStrings.appFontFamily,
                    ),
                  ),
                ),
              );
            },
            buildWhen: (context, state) {
              return state is FetchCarouselDataSuccess;
            },
          ),
          ColoredBox(
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 6),
                  child: Text(
                    AppStrings.cities,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppStrings.appFontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<WeatherAppBloc, WeatherAppState>(
              builder: (context, state) {
                if (state is FetchCityLoading) {
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
                if (state is FetchCityError) {
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
                if (state is FetchCitiesSuccess) {
                  return ListView.builder(
                    // Let the ListView know how many items it needs to build.
                    itemCount: state.cities.length,
                    shrinkWrap: true,

                    // Provide a builder function. This is where the magic happens.
                    // Convert each item into a widget based on the type of item it is.
                    itemBuilder: (context, index) {
                      final item = state.cities[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 8,
                        ),
                        child: CityCard(
                          city: item,
                          onClick: () {
                            context.go(AppRoute.details);
                            context
                                .read<WeatherAppBloc>()
                                .add(FetchWeatherForCity(city: item));
                          },
                        ),
                      );
                    },
                  );
                }
                return Container();
              },
              buildWhen: (context, state) {
                return state is FetchCitiesSuccess ||
                    state is FetchCityError ||
                    state is FetchCityLoading;
              },
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       height: MediaQuery.of(context).size.width / 1.7,
      //       color: Colors.indigo,
      //     ),
      //     const SizedBox(height: 8),
      //   ],
      // ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<WeatherAppBloc>().add(FetchCities());
    context.read<WeatherAppBloc>().add(const FetchCarouselData());
  }
}
