import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:open_weather_repository/open_weather_repository.dart';
import 'package:weather_app/util/strings.dart';
import 'package:weather_app/weather/bloc/weather_app_bloc.dart';
import 'package:weather_app/weather/view/weather_app_detail_page.dart';
import 'package:weather_app/weather/view/weather_page.dart';

class App extends StatelessWidget {
  // const App({super.key});

  const App({required WeatherAppRepository weatherRepository, super.key})
      : _weatherRepository = weatherRepository;
  final WeatherAppRepository _weatherRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _weatherRepository,
      child: BlocProvider(
        create: (_) => WeatherAppBloc(weatherAppRepository: _weatherRepository),
        child: MaterialApp.router(
          routerConfig: _router,
          title: AppStrings.appName,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WeatherAppScreen();
      },
      routes: <RouteBase>[
        // GoRoute(
        //   path: 'details',
        //   pageBuilder: (BuildContext context, GoRouterState state) {
        //     return CustomTransitionPage<void>(
        //       key: state.pageKey,
        //       child: const WeatherAppDetailScreen(),
        //       transitionDuration: const Duration(milliseconds: 150),
        //       transitionsBuilder: (BuildContext context,
        //           Animation<double> animation,
        //           Animation<double> secondaryAnimation,
        //           Widget child) {
        //         // Change the opacity of the screen using a Curve based on the
        //         // animation's
        //         // value
        //         return FadeTransition(
        //           opacity:
        //               CurveTween(curve: Curves.easeInOut).animate(animation),
        //           child: child,
        //         );
        //       },
        //     );
        //   },
        // ),
        GoRoute(
          path: 'details',
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage<void>(
              key: state.pageKey,
              child: const WeatherAppDetailScreen(),
              barrierDismissible: true,
              barrierColor: Colors.black38,
              opaque: false,
              transitionDuration: const Duration(milliseconds: 500),
              reverseTransitionDuration: const Duration(milliseconds: 200),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);
