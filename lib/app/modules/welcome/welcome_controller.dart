import 'dart:math';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
    textoPrincipal.value = "<3 Boa tentativa Sunshine hehehehe";

    var rng = Random();

    height.value = rng.nextInt(maxWidth.toInt()).toDouble();
    top.value = rng.nextInt(maxHeight.toInt()).toDouble();
    change(null, status: RxStatus.success());
  }

  sim() async {
var phone ="5569984324602";
var message ="Oi";

var whatsappUrl =
          "whatsapp://send?phone=$phone}" +
              "&text=${message}";
      try {
        launch(whatsappUrl);
      } catch (e) {
        //To handle error and display error message
        // Helper.errorSnackBar(
        //     context: context, message: "Unable to open whatsapp");
      }
// var whatsapp ="+5569984324602";

// var whatsappUrl = "whatsapp://send?phone=5586994324465&text=Olá,tudo bem ?";

//     if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
//       await launchUrl(Uri.parse(whatsappUrl));
//     } else {
//       // throw 'Could not launch $whatsappUrl';
//     }

// var phone ="5569984324602";
// var message ="Oi";
var url = "whatsapp://send?phone=5569984324602${Uri.parse(message)}"; // new line
if (await canLaunchUrl(Uri.parse(url))) {
        await launch(url);
      } else {
        throw "teste falhou";
      }
  
    //     // var whatsappUrl = "whatsapp://send?phone=5569984324602";

    //      var whatsappUrl = "https://wa.me/5569984324602";

    // if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
    //   await launchUrl(Uri.parse(whatsappUrl));
    // } else {
    //   throw 'Could not launch $whatsappUrl';
    // }


    // Get.defaultDialog(
    //     title: "Parabéns",
    //     middleText: "Você acaba de fazer a melhor escolha possível");
  }
}
