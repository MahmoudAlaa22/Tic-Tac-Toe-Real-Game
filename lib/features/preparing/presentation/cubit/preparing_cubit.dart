import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'preparing_state.dart';

class PreparingCubit extends Cubit<PreparingState> {
  PreparingCubit() : super(PreparingInitial());
}
