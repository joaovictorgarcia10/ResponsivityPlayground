import 'package:flutter/material.dart';

import '../../shared/utils/screen_validations.dart';
import '../../shared/widgets/app_bar/mobile/mobile_app_bar_widget.dart';
import '../../shared/widgets/app_bar/web/web_app_bar_widget.dart';
import '../widgets/home_advantages/home_advantages_widget.dart';
import '../widgets/home_courses_grid/home_courses_grid_widget.dart';
import '../widgets/home_header/home_header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // ignore: avoid_print
        print("""
        maxWidth: ${constraints.maxWidth}
        minWidth: ${constraints.minWidth}

        maxHeight: ${constraints.maxHeight}
        minheight: ${constraints.minHeight}

        ========================================
        """);

        return Scaffold(
          appBar: isMobile(maxWidth: constraints.maxWidth)
              ? const PreferredSize(
                  preferredSize: Size.fromHeight(56.0),
                  child: MobileAppBarWidget(),
                )
              : const PreferredSize(
                  preferredSize: Size.fromHeight(150.0),
                  child: WebAppBarWidget(),
                ),
          drawer:
              isMobile(maxWidth: constraints.maxWidth) ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1400,
              ),
              child: ListView(
                children: const [
                  HomeHeaderWidget(),
                  SizedBox(height: 10.0),
                  HomeAdvantagesWidget(),
                  SizedBox(height: 10.0),
                  HomeCoursesGridWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
