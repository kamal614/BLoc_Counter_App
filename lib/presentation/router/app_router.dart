import 'package:bloc_counter/logic/cubit/counter_cubit.dart';
import 'package:bloc_counter/presentation/screen/homescreen.dart';
import 'package:bloc_counter/presentation/screen/secondscreen.dart';
import 'package:bloc_counter/presentation/screen/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const MyHomePage(),
                ));
        break;
      case '/secondScreen':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const SecondScreen(),
                ));
        break;
      case '/thirdScreen':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const ThirdScreen(),
                ));
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const MyHomePage(),
                ));
        break;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
