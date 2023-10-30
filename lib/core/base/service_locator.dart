import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/features_export.dart';
import '../core_export.dart';

final serviceLocator = GetIt.instance;

Future<void> initServiceLocator() async {
  //! ############################### Package ###############################
  final sharedPref = await SharedPreferences.getInstance();
  await ScreenUtil.ensureScreenSize();
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
  // serviceLocator.registerLazySingleton<ThemeService>(() => ThemeServiceImpl());
  //! ################################ Datasources #################################
  // serviceLocator.registerLazySingleton<ReservationRemoteDatasource>(
  //     () => ReservationRemoteDatasourceImpl());

  //! ################################# Repository #################################
  // serviceLocator
  //     .registerLazySingleton<ReservationRepo>(() => ReservationRepoImpl());

  //! ################################# Usecases #################################
  // serviceLocator.registerLazySingleton(() => ReservationUsecase());

  //! ############################### Bloc Or Cubit ###############################
  serviceLocator.registerFactory(() => ThemeCubit());
  serviceLocator.registerFactory(() => SplashAndOnboardingCubit());
  serviceLocator.registerFactory(() => LoginCubit());
  serviceLocator.registerFactory(() => PreparingCubit());
  serviceLocator.registerFactory(() => DashboardCubit());
  serviceLocator.registerFactory(() => HomeCubit());
}
