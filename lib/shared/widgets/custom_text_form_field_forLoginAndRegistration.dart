import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({
     required this.controller,
     this.type,
     this.onSubmit,
     this.onChange,
     this.onTap,
     this.isPassword,
     required this.validate,
     required this.label,
     required this.prefix,
     this.suffix,
     required this.isClickable,
     this.suffixPressed,
   }) ;
   TextEditingController controller;
   TextInputType? type;
   Function(dynamic)? onSubmit;
   Function(dynamic)? onChange;
   Function()? onTap;
   bool? isPassword = false;
   Function validate;
   String label;
   IconData prefix;
   IconData? suffix;
   Function()? suffixPressed;
   bool? isClickable = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          controller: controller,
          keyboardType: type,
          obscureText: isPassword!,
          enabled: isClickable,
          onFieldSubmitted: onSubmit,
          onChanged: onChange,
          onTap: onTap,
          validator: validate(String),
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: Icon(
              prefix,
            ),
            suffixIcon: suffix != null
                ? IconButton(
              onPressed: suffixPressed,
              icon: Icon(
                suffix,
              ),
            )
                : null,
            border: OutlineInputBorder(),
          ),
        );
  }
}
