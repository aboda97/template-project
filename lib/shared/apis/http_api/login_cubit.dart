/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ShopLoginCubit extends Cubit<ShopLoginStates> {
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);
  UserLoginApi? userLoginApi;
  LoginModel? loginModel;

  void postUserLogin({
    required String email,
    required String password,
  }) async {
    emit(ShopLoginLoadingState());
    Map<String, dynamic>? data =
    await Api().post(url: 'https://student.valuxapps.com/api/login', body: {
      'email': email,
      'password': password,
    })
      .then((value) {
      print(value.data);
      emit(ShopLoginSuccessState(loginModel!));
    }).catchError((error) {
      emit(ShopLoginErrorState(error.toString()));
    });
  }


    IconData suffix = Icons.visibility_outlined;
    bool isPassWord = true;
    void changePasswordVisibility() {
      isPassWord = !isPassWord;
      suffix = isPassWord ? Icons.visibility_outlined : Icons.visibility_off_outlined ;
      emit(ShopChangePassVisibilityState());
    }
  }
  
*/
