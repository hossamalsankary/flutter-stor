import 'package:flutter/material.dart';
import 'package:shop_app/screens/auth/login_screen.dart';
import 'package:shop_app/screens/welcome_screen/welcom_screen.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     // home: const Onbord(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page:()=>Onbord() ),
        GetPage(name: "/LogIn", page:()=>LoginPage() ),

      ],
    );
  }
}
