import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tracker_login_register/shared/constant.dart';


Widget defaultButton({
  double width = double.infinity,
  required Color textStyle,
  required Color background,
  required TimelineSyncFunction function,
  required String text,
}) =>
    MaterialButton(
        onPressed: function,
        color: background,
        height: 35,
        minWidth: 300,
        child: Text(text,style: TextStyle(color: textStyle),),);

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onChange,
  Function? onSubmit,
  bool isPassword = false,
  IconData? suffix,
  String? Function(String?)? validate,
  required String label,
  VoidCallback? suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onChanged: (value) {
          print(onChange!(value));
      },
      obscureText: isPassword,
      onFieldSubmitted: (value) {
          print(onSubmit!(value));
      },
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: IconButton(
          onPressed:suffixPressed,
          icon: suffix != null ? Icon(suffix,) : Icon(suffix = null),
        ),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25,),),),
      ),
      validator: (value) {
        return validate!(value);
      },
    );