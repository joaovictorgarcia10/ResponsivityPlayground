import 'package:flutter/material.dart';
import 'course_item/course_item_widget.dart';

class HomeCoursesGridWidget extends StatefulWidget {
  const HomeCoursesGridWidget({Key? key}) : super(key: key);

  @override
  State<HomeCoursesGridWidget> createState() => _HomeCoursesGridWidgetState();
}

class _HomeCoursesGridWidgetState extends State<HomeCoursesGridWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300.0,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      padding: const EdgeInsets.all(16.0),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const CourseItemWidget();
      },
    );
  }
}
