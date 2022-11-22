import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  Function onTap;
  String title;
  myButton({Key? key, required this.onTap, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onTap();
        },
        child: Container(height: 50, child: Center(child: Text(title))),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
            fixedSize:
                MaterialStateProperty.all(Size.fromWidth(MediaQuery.of(context).size.width - 40))));
  }
}
