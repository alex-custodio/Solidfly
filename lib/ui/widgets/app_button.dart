import 'package:flutter/material.dart';
import 'package:solidifly/utils/constantes.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;

  const AppButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 70.0),
      child: ElevatedButton(
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          primary: backgroudColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
