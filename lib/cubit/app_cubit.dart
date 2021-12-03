import 'package:bloc/bloc.dart';

import 'package:travel_app/pages/welcome.dart';

import 'app_cubit_states.dart';

class AppCubits extends Cubit<CubitSates> {
  // ignore: non_constant_identifier_names
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
