import 'package:flutter/material.dart';
import 'package:sh_explample/helpers/preferences.dart';
import 'package:sh_explample/pages/form.dart';
import 'package:sh_explample/pages/myData.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: Preferences.name != '' &&
              Preferences.name != null &&
              Preferences.lastName != '' &&
              Preferences.lastName != null &&
              Preferences.email != '' &&
              Preferences.email != null
          ? 'myData'
          : 'myForm',
      theme: ThemeData.dark(),
      routes: {'myForm': (_) => MyForm(), 'myData': (_) => MyData()},
    );
  }
}
