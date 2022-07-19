import 'package:flutter/material.dart';

class MobileAppBarWidget extends StatelessWidget {
  const MobileAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const FlutterLogo(),
      centerTitle: true,
      actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(
            icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
      ],
    );
  }
}
