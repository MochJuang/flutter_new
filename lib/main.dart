import 'package:app1/injection.dart';
import 'package:app1/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv().load(fileName: '.env');
  configureDependencies();
  runApp(AppWidget());
}
