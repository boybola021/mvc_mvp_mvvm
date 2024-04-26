import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../exceptions/app_exceptions.dart';
import 'base_api_service.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future getApi(String url) async {

    dynamic responseJson;
    try {
      Uri uri = Uri.parse(url);
      final response = await http.get(uri).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    }on RequestTimeOutException {
      throw RequestTimeOutException();
    }
    return responseJson;
  }



  @override
  Future postApi(var data, String url)async{
    dynamic responseJson;
    try {
      Uri uri = Uri.parse(url);
      final response = await http.post(uri,body: data).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    }on RequestTimeOutException {
      throw RequestTimeOutException();
    }
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200: return jsonDecode(response.body);
      case 400: throw InvalidUrlException();
      default:
        throw FetchDataException("Error accoured while comunacating with server${response.statusCode}");
    }
  }
}
