import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standard_project/layout/app_name_cubit.dart';
import 'package:standard_project/shared/apis/dio_api/dio_helper.dart';
import 'package:standard_project/shared/bloc_observer.dart';
import 'package:standard_project/shared/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  DioHelper.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppNameCubitHome.id : (context)=> AppNameCubitHome(),
      },
      initialRoute: AppNameCubitHome.id,
    );
  }
}


