import 'package:flutter/material.dart';
import '../../outlined_button/outlined_button_widget.dart';
import 'web_app_bar_search_content/web_app_bar_search_content_widget.dart';

class WebAppBarWidget extends StatefulWidget {
  const WebAppBarWidget({Key? key}) : super(key: key);

  @override
  State<WebAppBarWidget> createState() => _WebAppBarWidgetState();
}

class _WebAppBarWidgetState extends State<WebAppBarWidget> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: Colors.black,
      toolbarHeight: 100.0,
      title: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1400),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              children: [
                const FlutterLogo(),
                const SizedBox(width: 5.0),
                const Text("Flutter"),
                const SizedBox(width: 24.0),
                WebAppBarSearchContentWidget(
                  textEditingController: searchController,
                ),
                const SizedBox(width: 24.0),
                IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined),
                    onPressed: () {}),
                const SizedBox(width: 24.0),
                const OutilinedButtonWidget(text: "Fazer Login"),
                const SizedBox(width: 24.0),
                const OutilinedButtonWidget(
                    text: "Cadastre-se", isTransparent: false),
              ],
            ),
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                10,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextButton(
                      child: Text(
                        "Categoria $index",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
