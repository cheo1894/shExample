import 'package:flutter/material.dart';
import 'package:sh_explample/helpers/preferences.dart';
import 'package:sh_explample/widgets/myButton.dart';

class MyData extends StatelessWidget {
  const MyData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text('Shared Preferences Example')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name: ${Preferences.name}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Last name: ${Preferences.lastName}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Email: ${Preferences.email}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            myButton(
              onTap: () {
                Preferences.removeData();
                Navigator.pushReplacementNamed(context, 'myForm');
              },
              title: 'Edit preferences',
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
