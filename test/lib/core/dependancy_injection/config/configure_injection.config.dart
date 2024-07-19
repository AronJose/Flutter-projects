// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test/core/dependancy_injection/modules/dio_module.dart' as _i10;
import 'package:test/core/network/network_client.dart' as _i4;
import 'package:test/features/number_trivia/data/data_sources/number_trivia_datasource.dart'
    as _i5;
import 'package:test/features/number_trivia/data/repositories_impl/number_trivia_repo_impl.dart'
    as _i7;
import 'package:test/features/number_trivia/domain/repositories/number_trivia_repository.dart'
    as _i6;
import 'package:test/features/number_trivia/domain/usecases/get_number_trivia_usecase.dart'
    as _i8;
import 'package:test/features/number_trivia/presentation/blocs/number_trivia_bloc/number_trivia_bloc.dart'
    as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.lazySingleton<_i4.NetworkClient>(() => _i4.NetworkClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.NumberTriviaDataSource>(
        () => _i5.NumberTriviaDataSourceImpl(gh<_i4.NetworkClient>()));
    gh.lazySingleton<_i6.NumberTriviaRepository>(
        () => _i7.NumberTriviaRepoImpl(gh<_i5.NumberTriviaDataSource>()));
    gh.lazySingleton<_i8.GetNumberTriviaUseCase>(
        () => _i8.GetNumberTriviaUseCase(gh<_i6.NumberTriviaRepository>()));
    gh.factory<_i9.NumberTriviaBloc>(
        () => _i9.NumberTriviaBloc(gh<_i8.GetNumberTriviaUseCase>()));
    return this;
  }
}

class _$DioModule extends _i10.DioModule {}
