import 'package:dio/dio.dart';

class ProvinceService {
  var dio = Dio();

  Future<dynamic> provinceService() async {
    return await dio.get('https://reqres.in/api/users?page=2');
  }
}
