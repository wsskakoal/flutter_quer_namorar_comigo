import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/pages.dart';
import 'app/theme/primary_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    theme: primaryTheme,
    defaultTransition: Transition.fade,
    // initialBinding: WelcomeBinding(),
    getPages: AppPages.pages,
    // home: WelcomePage(),
  ));
}
