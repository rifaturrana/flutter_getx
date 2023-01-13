import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/User/views/user_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.USER,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
    );
  }
}
