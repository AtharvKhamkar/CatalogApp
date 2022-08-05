import 'dart:async';
import 'dart:ffi';

import 'package:catelogapp/Models/cart.dart';
import 'package:catelogapp/Models/catelog.dart';
import 'package:catelogapp/Pages/cart_page.dart';
import 'package:catelogapp/Pages/home_page.dart';
import 'package:catelogapp/Pages/login_page.dart';
import 'package:catelogapp/core/store.dart';
import 'package:catelogapp/utils/myRoutes.dart';
import 'package:catelogapp/widgets/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store:MyStore(cart: CartModel(), catalog:CatelogModel() ),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: myRouts.loginRoute,
        routes: {
          "/": (context) => HomePage(),
          myRouts.homeRoute: (context) => HomePage(),
          myRouts.loginRoute: (context) => LoginPage(),
          myRouts.cartRoute: (context) => CartPage()
        });
  }
}
