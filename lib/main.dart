import 'package:cf_tracker/pages/auth/auth_checker_page.dart';
import 'package:cf_tracker/pages/auth/login_page.dart';
import 'package:cf_tracker/pages/auth/register_page.dart';
import 'package:cf_tracker/pages/home/track_meal_page.dart';
import 'package:cf_tracker/pages/home/track_stool_page.dart';
import 'package:cf_tracker/pages/home/track_treatment_page.dart';
import 'package:cf_tracker/tab_bar_controller.dart';
import 'package:cf_tracker/utils/config.dart';
import 'package:cf_tracker/utils/theme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

void main() {

  // AUTH ROUTES
  router.define('/check-auth', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new AuthCheckerPage();
  }));
  router.define('/login', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new LoginPage();
  }));
  router.define('/register', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new RegisterPage();
  }));

  // HOME ROUTES
  router.define('/home', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new TabBarController();
  }));
  router.define('/home/treatment', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new TrackTreatmentPage();
  }));
  router.define('/home/meal', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new AddMealPage();
  }));
  router.define('/home/stools', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new TrackStoolPage();
  }));

  runApp(new MaterialApp(
    title: "CF Tracker Pro",
    onGenerateRoute: router.generator,
    navigatorObservers: <NavigatorObserver>[routeObserver],
    debugShowCheckedModeBanner: false,
    theme: mainTheme,
    home: new AuthCheckerPage(),
  ));
}