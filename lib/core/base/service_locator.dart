import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core_export.dart';

final serviceLocator = GetIt.instance;

Future<void> initServiceLocator() async {
  //! ############################### Package ###############################
  final sharedPref = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPref);
  serviceLocator.registerLazySingleton<Dio>(() => Dio());
  serviceLocator.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
  //! ############################### Service ###############################
  Bloc.observer = AppBlocObserver();
  serviceLocator.registerLazySingleton<FailureHandler>(() => FailureHandler());
  serviceLocator.registerLazySingleton<HttpService>(() => HttpServiceImpl());
  serviceLocator.registerLazySingleton(
      () => AppPreferences(sharedPreferences: serviceLocator()));
  serviceLocator.registerLazySingleton<NetworkService>(
      () => NetworkServiceImpl(serviceLocator()));
  serviceLocator
      .registerLazySingleton<LookupsService>(() => LookupsServiceImpl());
  //! ################################ Datasources #################################
  // serviceLocator.registerLazySingleton<ReservationRemoteDatasource>(
  //     () => ReservationRemoteDatasourceImpl());

  //! ################################# Repository #################################
  // serviceLocator
  //     .registerLazySingleton<ReservationRepo>(() => ReservationRepoImpl());

  //! ################################# Usecases #################################
  // serviceLocator.registerLazySingleton(() => ReservationUsecase());

  //! ############################### Bloc Or Cubit ###############################
  serviceLocator.registerFactory(() => SettingCubit());
}
