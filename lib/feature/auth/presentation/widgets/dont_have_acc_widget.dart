
import 'package:flutter/widgets.dart';

class DontHaveAnnAccountWidget extends StatelessWidget {
  const DontHaveAnnAccountWidget(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1;
  final String text2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.center,
        child: Text.rich(TextSpan(children: [
          TextSpan(text: text1),
          TextSpan(text: text2),
        ])),
      ),
    );
  }
}