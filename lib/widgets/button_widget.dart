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
    final buttonSize = Size(55, isEqual ? 120 : 55);

    return isEqual
        ? ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: buttonSize.height,
            width: buttonSize.width,
            child: Material(
              color: Color.fromARGB(255, 101, 248, 106),
              child: InkWell(
                splashColor: Color.fromARGB(255, 101, 248, 106),
                onTap: () => debugPrint(" RRect clicked"),
                child: Center(
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        )
        : ClipOval(
          child: SizedBox(
            height: buttonSize.height,
            width: buttonSize.width,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => debugPrint(" Oval clicked"),
                splashColor: Colors.green,
                child: Center(
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        );
  }
}

/*ClipOval(
      child: SizedBox.fromSize(
        size: const Size(70, 70),
        child: Material(
          color: Colors.white,
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [icon, text],
            ),
            onTap: onPressed,
            splashColor: color,
          ),
        ),
      ),
    ); */