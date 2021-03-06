import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

typedef CallBackSetting = void Function(String, int);

class ProductivityButton extends StatelessWidget{
  final Color color;
  final String text;
  final double size;
  final VoidCallback onPressed;

  ProductivityButton({@required this.color, @required this.text, @required this.size, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),),
      onPressed: this.onPressed,
      color: this.color,
      minWidth: this.size,
        );
  }
}

class SettingButton extends StatelessWidget {
  final Color color;
  final double size;
  final String text;
  final int value;
  final String setting;
  final CallBackSetting callback;

  SettingButton(this.color, this.text, this.size, this.value, this.setting, this.callback);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),),
        onPressed: () => this.callback(this.setting, this.value),
        color: this.color,
        minWidth: this.size,
    );
  }
}