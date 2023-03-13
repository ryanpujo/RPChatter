import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource.dart';
import 'package:ryan_pujo_app/user/infrastructure/datasource/user_remote_datasource_contract.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo.dart';
import 'package:ryan_pujo_app/user/infrastructure/repository/user_repo_contract.dart';

final locator = GetIt.instance;
void init() {
  locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerLazySingleton<UserRemoteDatasourceContract>(
      () => UserRemoteDatasource(locator()));
  locator.registerLazySingleton(() => FirebaseAuth.instance);

  locator.registerLazySingleton<UserRepositoryContract>(
      () => UserRepo(remmoteDatasource: locator()));
}
