import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled1/past_model.dart';

class MyController extends GetxController {
  var getdatModle = PastModel().obs;
  final TextEditingController name = TextEditingController();
  var itemCount = 0.obs;

  getDataModel() async {
    try {
      var response = await Dio().get(
        'https://dummy.restapiexample.com/api/v1/employees',
      );

      // getdatModle.value = jsonDecode(response.data.toString());

      getdatModle.value = PastModel.fromJson(
        response.data,
      );
      print(response);
    } catch (e) {
      print(e);
    }
  }

  removalemploye(int index) {
    getdatModle.value.data!.removeAt(index);
    itemCount.value = getdatModle.value.data!.length;
  }

  @override
  void onInit() {
    getDataModel();
    // TODO: implement onInit
    super.onInit();
  }
}
