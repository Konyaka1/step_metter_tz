import 'package:flutter/material.dart';
import 'package:step_metter_tz/service/app_init.dart';
import 'package:step_metter_tz/view/app_root.dart';

void main() async {
  await initApp();
  runApp(const AppRoot());
}
