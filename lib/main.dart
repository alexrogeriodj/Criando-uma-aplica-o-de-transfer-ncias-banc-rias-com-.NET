import 'package:alexrogeriodj/dependency-injector.dart';
import 'package:alexrogeriodj/pages/initial.page.dart';
import 'package:alexrogeriodj/themes/light.theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(alexrogeriodjApp());

class alexrogeriodjApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: DependencyInjector.obterDependencias(),
      child: MaterialApp(
        title: 'alexrogeriodj',
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        home: InitialPage(),
      ),
    );
  }
}
