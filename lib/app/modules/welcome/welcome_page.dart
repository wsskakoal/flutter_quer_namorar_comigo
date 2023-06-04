import 'package:flutter/material.dart';
import 'package:flutter_firebase_login_page/app/modules/common_pages/empty_page.dart';
import 'package:flutter_firebase_login_page/app/modules/common_pages/error_page.dart';
import 'package:flutter_firebase_login_page/app/modules/common_pages/loading_page.dart';
import 'package:get/get.dart';

import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    controller.height.value = Get.height / 10;
    controller.top.value = Get.height / 3;
    controller.maxHeight = Get.height / 2;
    controller.maxWidth = Get.width / 2;

    return Scaffold(
      // appBar: AppBar(title: Text('WelcomePage')),
      body: controller.obx((state) => page(),
          onEmpty: const EmptyPage(),
          onError: (error) => ErrorPage(error),
          onLoading: const LoadingPage()),
    );
  }

  Widget page() {
    return SafeArea(
      child: Stack(alignment: AlignmentDirectional.center, children: [
        const Positioned(
          top: 0.0,
          child: Icon(Icons.question_mark,
              size: 128.0, color: Color.fromARGB(255, 81, 0, 230)), //Icon
        ),
        Positioned(
          top: 150.0,
          child: Padding(
            padding: EdgeInsets.all(Get.height / 20),
            child: Center(
              child: Text(
                "QUER DORMIR COMIGO ?",
                style: TextStyle(fontSize: Get.height / 30),
              ),
            ),
          ),
        ),
        Positioned(
          left: Get.height / 10,
          top: Get.height / 3,
          child: Container(
            height: Get.height / 15,
            color: Colors.green,
            child: TextButton(
              child: Text(
                "SIM",
                style:
                    TextStyle(fontSize: Get.height / 40, color: Colors.white),
              ),
              onPressed: () => {controller.sim()},
            ),
          ),
        ),
        Positioned(
          right: controller.height.value,
          top: controller.top.value,
          child: Container(
            color: Colors.red,
            height: Get.height / 15,
            child: TextButton(
              child: Text(
                "NÃO",
                style:
                    TextStyle(fontSize: Get.height / 40, color: Colors.white),
              ),
              onHover: (value) => controller.nao(),
              onPressed: () => {controller.nao()},
            ),
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height,
          child:
              Center(child: Card(child: Text(controller.textoPrincipal.value))),
        ),
      ]),
    );
  }
}
