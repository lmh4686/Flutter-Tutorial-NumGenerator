//Ignore this page for flutter_hooks
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//Auto generated by running 'flutter pub run build_runner watch --delete-conflicting-outputs'
part 'randomizer_state_notifier.freezed.dart';

//Defining state
@freezed
class RandomizerState with _$RandomizerState {
  const RandomizerState._();
  const factory RandomizerState({
    @Default(0) int min,
    @Default(0) int max,
    int? generatedNumber,
  }) = _RandomizerState;
}

//Defining methods
class RandomizerStateNotifier extends StateNotifier<RandomizerState> {
  RandomizerStateNotifier() : super(RandomizerState());

  final _randomGenerator = Random();

  //Updating value by copying
  void generateRandomNumber() {
    state = state.copyWith(
      generatedNumber: state.min + _randomGenerator.nextInt(state.max + 1 - state.min),
    );
  }

  void setMin(int value) {
    state = state.copyWith(min: value);
  }

  void setMax(int value) {
  state = state.copyWith(max: value);
  }
}
