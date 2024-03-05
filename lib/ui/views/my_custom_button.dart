import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String buttonText;

  MyCustomButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("${buttonText}",style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))
            )
        ),
      ),
    );
  }
}