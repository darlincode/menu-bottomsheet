import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:menu/routes.dart';
import 'package:menu/screens/details.dart';
// ignore: unused_import
import 'routes.dart';

class Routes {
  static final Router _router = new Router(
    routerDelegate: null,
  );

  static get router => null;

  static void initRoutes() {
    router.define("/detail/:id", handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new DetailPage(params["id"]);
    }));
  }

  static void navigateTo(context, String route) {
    router.navigateTo(context, _router);
  }
}


