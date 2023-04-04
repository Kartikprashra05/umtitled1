import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_controller.dart';

class MyPage extends StatelessWidget {
  final controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.getdatModle.value != null
        ? Scaffold(
            body: ListView.builder(
              itemCount: controller.getdatModle.value.data?.length,
              itemBuilder: (context, index) {
                var model = controller.getdatModle.value.data?[index];

                return ListTile(
                  title: Text(model?.employeeName ?? ""),
                );
              },
            ),
          )
        : Container());
  }
}
