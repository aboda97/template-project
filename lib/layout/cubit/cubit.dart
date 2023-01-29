import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standard_project/layout/cubit/states.dart';

class AppCubit extends Cubit<AppNameState> {
  AppCubit() : super(AppInitialState());

  //make object of AppCubit
  static AppCubit get(context) => BlocProvider.of(context);
}