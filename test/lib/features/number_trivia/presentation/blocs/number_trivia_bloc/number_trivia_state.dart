part of 'number_trivia_bloc.dart';

@freezed
class NumberTriviaState with _$NumberTriviaState {
  const factory NumberTriviaState({
    required bool isLoading,
    String? error,
    TriviaEntity? trivia,
  }) = _Initial;
  factory NumberTriviaState.initial() =>const NumberTriviaState(isLoading: false);
}

