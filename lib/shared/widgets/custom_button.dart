import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    required this.function,
    required this.text,
    this.width,
    this.background,
     this.isUpperCase,
     this.radius,
  }) ;
     double? width = double.infinity;
     Color? background = Colors.blue;
      bool? isUpperCase = true;
      double? radius = 3.0;
     Function() function;
     String text;

  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: width,
          height: 50.0,
          child: MaterialButton(
            onPressed: function,
            child: Text(
              isUpperCase! ? text.toUpperCase() : text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              radius!,
            ),
            color: background,
          ),
        );
  }
}

/*

class CustomButton extends StatelessWidget {
   CustomButton({this.ontap, required this.text}) ;
   VoidCallback? ontap;
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 65.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(text ,style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 24.0
          ),),
        ),
      ),
    );
  }
}

 */


