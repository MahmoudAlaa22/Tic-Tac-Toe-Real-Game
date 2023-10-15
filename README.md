# Tic Tac Toe. ❌⭕

A Tic Tac Toe app in Flutter is a simple mobile application that replicates the classic game of Tic Tac Toe. It typically features a 3x3 grid where two players take turns marking spaces in the grid with either an 'X' or an 'O' until one player successfully forms a horizontal, vertical, or diagonal line of their respective symbol.

// Here I will add short video for the app


## ⚙ Tools Used
- Flutter 
- Dart

## ✨ Features
✔ Beautiful UI.\
✔ Amazing animation.\
✔ Sign in with Facebook.\
✔ Sign in with Google.


## Directory Structure
```
├── core/
│   ├── base/
│   │   ├── api/
│   │   │   ├── apis.dart
│   │   │   └── end_points.dart
│   │   ├── base_export.dart
│   │   ├── bloc_observer.dart
│   │   └── service_locator.dart
│   ├── core_export.dart
│   ├── design_pattern/
│   │   ├── command/
│   │   │   └── command.dart
│   │   ├── desugn_patter_export.dart
│   │   └── observer_pattern/
│   │       ├── observable.dart
│   │       └── observer.dart
│   ├── error/
│   │   ├── failure.dart
│   │   └── failure_handler.dart
│   ├── l10n/
│   │   ├── app_ar.arb
│   │   ├── app_en.arb
│   │   └── language_manager.dart
│   ├── models/
│   │   ├── enums/
│   │   │   ├── app_supported_languages_enum.dart
│   │   │   ├── app_them_mode_enum.dart
│   │   │   ├── text_field_type.dart
│   │   │   └── toast_type.dart
│   │   ├── models_export.dart
│   │   ├── requests/
│   │   │   └── request_data.dart
│   │   └── responses/
│   │       └── base_response.dart
│   ├── services/
│   │   ├── cache/
│   │   │   └── app_prefs.dart
│   │   ├── cubits_manager/
│   │   │   └── cubits_manager.dart
│   │   ├── http/
│   │   │   ├── http_export.dart
│   │   │   ├── http_service.dart
│   │   │   ├── http_service_helper.dart
│   │   │   └── http_service_impl.dart
│   │   ├── lookups/
│   │   │   ├── lookups_service.dart
│   │   │   └── lookups_service_impl.dart
│   │   ├── navigation/
│   │   │   ├── navigation_export.dart
│   │   │   ├── navigation_service.dart
│   │   │   └── navigation_service_impl.dart
│   │   ├── network/
│   │   │   ├── network_export.dart
│   │   │   ├── network_service.dart
│   │   │   └── network_service_impl.dart
│   │   ├── services_eport.dart
│   │   └── theme/
│   │       ├── theme_export.dart
│   │       ├── theme_service.dart
│   │       └── theme_service_impl.dart
│   └── utils/
│       ├── app_utils.dart
│       ├── extensions/
│       │   ├── datetime.dart
│       │   ├── extensions_export.dart
│       │   ├── language.dart
│       │   └── strings.dart
│       ├── routes/
│       │   ├── router.dart
│       │   ├── routes.dart
│       │   └── routes_export.dart
│       ├── theme/
│       │   ├── app_colors.dart
│       │   ├── app_fonts.dart
│       │   ├── app_sizes.dart
│       │   ├── app_styles.dart
│       │   ├── app_theme.dart
│       │   ├── cubit/
│       │   │   ├── theme_cubit.dart
│       │   │   └── theme_state.dart
│       │   ├── image_assets.dart
│       │   └── theme_export.dart
│       ├── utils_epxort.dart
│       └── validators/
│           ├── confirm_password_validator.dart
│           ├── custom_validator.dart
│           ├── email_validator.dart
│           ├── length_validator.dart
│           ├── min_length_validator.dart
│           ├── multi_validator.dart
│           ├── name_validator.dart
│           ├── number_validator.dart
│           ├── password_validator.dart
│           ├── url_validator.dart
│           ├── validate_messages.dart
│           ├── validators.dart
│           └── validator_export.dart
├── features/
│   ├── friends/
│   │   └── presentation/
│   │       └── cubit/
│   │           ├── friends_cubit.dart
│   │           └── friends_state.dart
│   ├── game/
│   │   └── presentation/
│   │       └── cubit/
│   │           ├── game_cubit.dart
│   │           └── game_state.dart
│   ├── game_history/
│   │   └── presentation/
│   │       └── cubit/
│   │           ├── game_history_cubit.dart
│   │           └── game_history_state.dart
│   ├── home/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── cubit/
│   │       │   ├── home_cubit.dart
│   │       │   └── home_state.dart
│   │       ├── pages/
│   │       └── widgets/
│   ├── invite_friends /
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── cubit/
│   │       │   ├── invite_friends_cubit.dart
│   │       │   └── invite_friends_state.dart
│   │       ├── pages/
│   │       └── widgets/
│   ├── login/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── cubit/
│   │       │   ├── login_cubit.dart
│   │       │   └── login_state.dart
│   │       ├── pages/
│   │       └── widgets/
│   ├── online_players/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── cubit/
│   │       │   ├── online_players_cubit.dart
│   │       │   └── online_players_state.dart
│   │       ├── pages/
│   │       └── widgets/
│   ├── preparing/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── cubit/
│   │       │   ├── preparing_cubit.dart
│   │       │   └── preparing_state.dart
│   │       ├── pages/
│   │       └── widgets/
│   ├── scoreboard/
│   │   └── presentation/
│   │       └── cubit/
│   │           ├── scoreboard_cubit.dart
│   │           └── scoreboard_state.dart
│   └── splash_and_onboarding/
│       ├── data/
│       │   ├── datasources/
│       │   ├── models/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── cubit/
│           │   ├── splash_and_onboarding_cubit.dart
│           │   └── splash_and_onboarding_state.dart
│           ├── pages/
│           └── widgets/
└── main.dart
```
