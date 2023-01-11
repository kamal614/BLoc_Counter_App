import 'package:bloc_test/bloc_test.dart';

import 'package:test/test.dart';

import '../../logic/cubit/counter_cubit.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit? counterCubit;
    setUp(
      () {
        counterCubit = CounterCubit();
      },
    );

    tearDown(
      () {
        counterCubit!.close();
      },
    );

    test(
      "test1",
      () {
        expect(counterCubit!.state, CounterState(counterValue: 0));
      },
    );

    // blocTest(
    //   "description where counterValue should be 1 and wasIncremented will be true on calling the increment functions",
    //   build: () => CounterCubit(),
    //   act: ((cubit) => cubit.increment()),
    //   expect: () {
    //     CounterState(counterValue: 1, wasIncremented: true);
    //   },
    // );
    // blocTest(
    //   "description where counterValue should be -1 and wasIncremented will be false on calling the decrement functions",
    //   build: () => CounterCubit(),
    //   act: ((cubit) => cubit.decrement()),
    //   expect: () {
    //     CounterState(counterValue: -1, wasIncremented: false);
    //   },
    // );
  });
}
