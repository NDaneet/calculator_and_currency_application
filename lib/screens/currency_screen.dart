import 'package:calculator_and_currency_application/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenBottom = MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint(screenHeight.toString());
            },
            icon: const Icon(Icons.drive_eta_outlined),
          )
        ],
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: screenHeight/2.5,
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(value: "7"),
                      ButtonWidget(value: "4"),
                      ButtonWidget(value: "1"),
                      ButtonWidget(value: "."),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(value: "8"),
                      ButtonWidget(value: "5"),
                      ButtonWidget(value: "2"),
                      ButtonWidget(value: "0"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(value: "9"),
                      ButtonWidget(value: "6"),
                      ButtonWidget(value: "3"),
                      ButtonWidget(value: "00"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonWidget(value: "AC"),
                      ButtonWidget(value: "⌫"),
                    ],
                  ),
                ],
              ),),
          )
        ],
      ),
    );
  }
}
