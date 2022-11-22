import 'package:flutter/material.dart';
import 'package:sh_explample/helpers/preferences.dart';
import 'package:sh_explample/widgets/input.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/myButton.dart';

class MyForm extends StatelessWidget {
  MyForm({Key? key}) : super(key: key);
  final TextEditingController _name = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();

  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text('Shared Preferences Example')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            MyInput(
              controller: _name,
              placeholder: 'Name',
            ),
            SizedBox(
              height: 20,
            ),
            MyInput(controller: _lastName, placeholder: 'Last name'),
            SizedBox(
              height: 20,
            ),
            MyInput(
              controller: _email,
              placeholder: 'Email',
            ),
            Expanded(
              child: Container(),
            ),
            myButton(
              title: 'Save preferences',
              onTap: () {
                Preferences.name = _name.text;
                Preferences.lastName = _lastName.text;
                Preferences.email = _email.text;
                Navigator.pushReplacementNamed(context, 'myData');
              },
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
