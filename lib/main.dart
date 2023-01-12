import 'dart:developer';

import 'package:bloc_counter/logic/cubit/counter_cubit.dart';
import 'package:bloc_counter/presentation/screen/secondscreen.dart';
import 'package:bloc_counter/presentation/screen/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/screen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'BLoC Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const MyHomePage(),
              ),
          '/secondScreen': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const SecondScreen(),
              ),
          '/thirdScreen': (context) => BlocProvider.value(
                value: _counterCubit,
                child: const ThirdScreen(),
              ),
        },
      ),
    );
  }
}
