


import 'dart:ui';

import 'package:mvc_mvvm/mvvm/data/network/network.dart';
import 'package:mvc_mvvm/mvvm/res/core/api_url.dart';

class LoginRepository{
  final _apiService = NetworkApiService();

  Future<dynamic> loginApi(var data,)async{
    dynamic response = _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}