import 'package:flutter/material.dart';
import '../../../shared/utils/screen_validations.dart';
import 'horizontal_advantage/horizontal_advantage_widget.dart';
import 'vertical_advantage/vertical_advantage_widget.dart';

class HomeAdvantagesWidget extends StatelessWidget {
  const HomeAdvantagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isMobile(maxWidth: constraints.maxWidth)) {
          return Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 15.0,
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 15.0,
              runSpacing: 30.0,
              children: const [
                HorizontalAdvantageWidget(
                  iconData: Icons.connect_without_contact,
                  subtitle: '+100.000 developers',
                  title: 'Awesome!',
                ),
                HorizontalAdvantageWidget(
                  iconData: Icons.card_membership,
                  subtitle: 'Certificate of Complete',
                  title: 'Sensational!',
                ),
                HorizontalAdvantageWidget(
                  iconData: Icons.verified,
                  subtitle: 'Full Access',
                  title: 'Anywhere!',
                ),
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 15.0,
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            spacing: 15.0,
            runSpacing: 30.0,
            children: const [
              VerticalAdvantageWidget(
                iconData: Icons.connect_without_contact,
                subtitle: '+100.000 developers',
                title: 'Awesome!',
              ),
              VerticalAdvantageWidget(
                iconData: Icons.card_membership,
                subtitle: 'Certificate of Complete',
                title: 'Sensational!',
              ),
              VerticalAdvantageWidget(
                iconData: Icons.verified,
                subtitle: 'Full Access',
                title: 'Anywhere!',
              ),
            ],
          ),
        );
      },
    );
  }
}
