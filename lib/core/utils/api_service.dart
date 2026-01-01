import 'package:dio/dio.dart';

class ApiService {
 final Dio dio;
 ApiService(this.dio);

 final String url = "https://dummyjson.com/" ;

 Future<Map<String,dynamic>> get ({required String endPoint})async{
   final response = await dio.get("$url$endPoint");
   return response.data ;
 }
}