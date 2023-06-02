import 'package:flutter_firebase_login_page/app/modules/welcome/welcome_binding.dart';
import 'package:flutter_firebase_login_page/app/modules/welcome/welcome_page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => WelcomePage(), binding: WelcomeBinding())
  ];
}
