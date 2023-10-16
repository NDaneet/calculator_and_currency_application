import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.value,
    this.onPressed,
  });
  final String value;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    bool isEqual = value == "=";
    final buttonSize = Size(50, isEqual ? 150 : 70);

    return isEqual
        ? SizedBox(
            height: buttonSize.height,
            width: buttonSize.width,
            child: ClipRRect(
              child: InkWell(
                onTap: () {},
                child: Text(
                  value,
                ),
              ),
            ),
          )
        : InkWell(
            onTap: () {},
            child: SizedBox(
              height: buttonSize.height,
              width: buttonSize.width,
              child: ClipOval(
                child: Text(
                  value,
                ),
              ),
            ),
          );
  }
}
