import 'dart:math';

import 'package:get/get.dart';

class WelcomeController extends GetxController with StateMixin<Type> {
  RxString textoPrincipal = RxString(" ");

  RxDouble height = RxDouble(0);
  RxDouble top = RxDouble(0);
  double maxHeight = 0;
  double maxWidth = 0;

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  nao() {
    change(null, status: RxStatus.loading());
    textoPrincipal.value = "<3";

    var rng = Random();

    height.value = rng.nextInt(maxWidth.toInt()).toDouble();
    top.value = rng.nextInt(maxHeight.toInt()).toDouble();
    change(null, status: RxStatus.success());
  }

  sim() {
    Get.defaultDialog(
        title: "Parabéns",
        middleText: "Você acaba de ganhar uma estádia gratis na Wyllian House");
  }
}
