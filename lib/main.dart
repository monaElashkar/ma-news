import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/route/route_keys.dart';

import 'bloc_obseve.dart';

void main() {
    Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteKeys.categoriesScreen,
      routes: Routes.route,
    );
  }
}

