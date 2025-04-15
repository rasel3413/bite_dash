import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

// Assuming we'll add these later for auth feature
// import '../../features/auth/data/datasources/auth_remote_datasource.dart';
// import '../../features/auth/data/repositories/auth_repository_impl.dart';
// import '../../features/auth/domain/repositories/auth_repository.dart';
// import '../../features/auth/domain/usecases/login.dart';
// import '../../features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton<Dio>(() => Dio());

  // Features (example for auth, expand for other features)
  // Data sources
  // sl.registerLazySingleton<AuthRemoteDataSource>(
  //   () => AuthRemoteDataSourceImpl(apiClient: sl()),
  // );

  // Repositories
  // sl.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(remoteDataSource: sl()),
  // );

  // Use cases
  // sl.registerLazySingleton(() => Login(sl()));

  // Blocs
  // sl.registerFactory(() => AuthBloc(login: sl()));
}