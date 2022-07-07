import 'package:flutter/material.dart';
import '../../../../utils/screen_validations.dart';
import '../../../text_form_field/text_form_field_widget.dart';

class WebAppBarSearchContentWidget extends StatelessWidget {
  final TextEditingController textEditingController;

  const WebAppBarSearchContentWidget({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormFieldWidget(
                    controller: textEditingController,
                    label: "Pesquisar",
                    prefixIcon: Icons.search,
                  ),
                ),
              ),
              if (!isMobile(maxWidth: constraints.maxWidth)) ...[
                const SizedBox(width: 24.0),
                TextButton(
                  onPressed: () {},
                  child: const Text("Aprender"),
                ),
              ],
              const SizedBox(width: 24.0),
              if (!isMobile(maxWidth: constraints.maxWidth))
                TextButton(
                  onPressed: () {},
                  child: const Text("Ensinar"),
                ),
            ],
          );
        },
      ),
    );
  }
}
