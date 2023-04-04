import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:untitled1/get_api/getmodel.dart';

class SmapleController extends GetxController {
  var dataType = <SampleModel>[].obs;
  @override
  void onInit() {
    getData();
    // TODO: implement onInit
    super.onInit();
  }

  final client = Dio();

  Future<SampleModel?> getData() async {
    final url = 'https://reqres.in/api/users?page=2';

    try {
      final response = await client.get(url);
      print(response);

      if (response.statusCode == 200) {
        return SampleModel.fromJson(response.data);
      }
    } catch (error) {
      print(error);
    }
  }
}
