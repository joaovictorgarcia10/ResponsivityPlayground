import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework_app/modules/widgets/app_bar/app_bar_actions/app_bar_actions.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72.0,
      title: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: const Text("Flutter"),
              ),
              //  const SizedBox(width: 32.0),
              Expanded(
                child: ResponsiveVisibility(
                  visible: false,
                  visibleWhen: const [
                    Condition.largerThan(name: MOBILE),
                  ],
                  child: Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 350.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(
                            child: Row(
                              children: const [
                                Icon(Icons.search_outlined, size: 20),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Pesquisar",
                                      hintStyle: TextStyle(color: Colors.white),
                                      isCollapsed: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10.0),
              const AppBarActions(),
            ],
          ),
        ),
      ),
    );
  }
}
