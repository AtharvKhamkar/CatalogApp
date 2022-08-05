// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:velocity_x/velocity_x.dart';

import 'package:catelogapp/Models/cart.dart';
import 'package:catelogapp/Models/cart.dart';
import 'package:catelogapp/Models/catelog.dart';
import 'package:catelogapp/Models/catelog.dart';

class MyStore extends VxStore {
  CatelogModel catalog;
  CartModel cart;

  MyStore({required this.catalog, required this.cart}) {
    catalog = CatelogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
