import 'package:flutter/material.dart';

class OutilinedButtonWidget extends StatelessWidget {
  final String text;
  final bool? isTransparent;

  const OutilinedButtonWidget({
    Key? key,
    required this.text,
    this.isTransparent = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.0,
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isTransparent! ? Colors.transparent : Colors.white),
          side: MaterialStateProperty.all(
            const BorderSide(color: Colors.white),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isTransparent! ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
