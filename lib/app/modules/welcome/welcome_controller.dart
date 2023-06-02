import 'dart:math';

import 'package:get/get.dart';

class WelcomeController extends GetxController with StateMixin<Type> {
  RxString textoPrincipal = RxString(" ");

  RxDouble right = RxDouble(0);
  RxDouble top = RxDouble(0);

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  nao() {
    change(null, status: RxStatus.loading());
    textoPrincipal.value = "<3";

    var rng = Random();

    right.value = rng.nextInt(599).toDouble();
    top.value = rng.nextInt(599).toDouble();
    change(null, status: RxStatus.success());
  }

  sim() {
    Get.defaultDialog(
        title: "Parabéns", middleText: "Você acaba de entrar na minha vida");
  }
}
