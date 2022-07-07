import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/course_image.png',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 5.0),
        const Flexible(
          child: AutoSizeText(
            'Raro Academy | '
            'O melhor bootcamp de Flutter',
            maxLines: 3,
            presetFontSizes: [
              16.0,
              14.0,
              12.0,
            ],
            overflowReplacement: Text(
              'Flutter',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16.0,
              ),
            ),
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16.0,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        const Text(
          'Raro Labs',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
