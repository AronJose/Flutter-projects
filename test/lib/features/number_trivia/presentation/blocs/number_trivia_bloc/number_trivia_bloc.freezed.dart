// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NumberTriviaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrivia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrivia value) getTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrivia value)? getTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrivia value)? getTrivia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res, NumberTriviaEvent>;
}

/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res, $Val extends NumberTriviaEvent>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTriviaImplCopyWith<$Res> {
  factory _$$GetTriviaImplCopyWith(
          _$GetTriviaImpl value, $Res Function(_$GetTriviaImpl) then) =
      __$$GetTriviaImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTriviaImplCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$GetTriviaImpl>
    implements _$$GetTriviaImplCopyWith<$Res> {
  __$$GetTriviaImplCopyWithImpl(
      _$GetTriviaImpl _value, $Res Function(_$GetTriviaImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTriviaImpl implements GetTrivia {
  const _$GetTriviaImpl();

  @override
  String toString() {
    return 'NumberTriviaEvent.getTrivia()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTriviaImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrivia,
  }) {
    return getTrivia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrivia,
  }) {
    return getTrivia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrivia,
    required TResult orElse(),
  }) {
    if (getTrivia != null) {
      return getTrivia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrivia value) getTrivia,
  }) {
    return getTrivia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrivia value)? getTrivia,
  }) {
    return getTrivia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrivia value)? getTrivia,
    required TResult orElse(),
  }) {
    if (getTrivia != null) {
      return getTrivia(this);
    }
    return orElse();
  }
}

abstract class GetTrivia implements NumberTriviaEvent {
  const factory GetTrivia() = _$GetTriviaImpl;
}

/// @nodoc
mixin _$NumberTriviaState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  TriviaEntity? get trivia => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberTriviaStateCopyWith<NumberTriviaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaStateCopyWith<$Res> {
  factory $NumberTriviaStateCopyWith(
          NumberTriviaState value, $Res Function(NumberTriviaState) then) =
      _$NumberTriviaStateCopyWithImpl<$Res, NumberTriviaState>;
  @useResult
  $Res call({bool isLoading, String? error, TriviaEntity? trivia});
}

/// @nodoc
class _$NumberTriviaStateCopyWithImpl<$Res, $Val extends NumberTriviaState>
    implements $NumberTriviaStateCopyWith<$Res> {
  _$NumberTriviaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? trivia = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      trivia: freezed == trivia
          ? _value.trivia
          : trivia // ignore: cast_nullable_to_non_nullable
              as TriviaEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NumberTriviaStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, TriviaEntity? trivia});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? trivia = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      trivia: freezed == trivia
          ? _value.trivia
          : trivia // ignore: cast_nullable_to_non_nullable
              as TriviaEntity?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.isLoading, this.error, this.trivia});

  @override
  final bool isLoading;
  @override
  final String? error;
  @override
  final TriviaEntity? trivia;

  @override
  String toString() {
    return 'NumberTriviaState(isLoading: $isLoading, error: $error, trivia: $trivia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.trivia, trivia) || other.trivia == trivia));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, trivia);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements NumberTriviaState {
  const factory _Initial(
      {required final bool isLoading,
      final String? error,
      final TriviaEntity? trivia}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  TriviaEntity? get trivia;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
