import 'package:calculator_and_currency_application/screens/currency_screen.dart';
import 'package:calculator_and_currency_application/screens/history_screen.dart';
import 'package:calculator_and_currency_application/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: screenWidth,
              height: screenHeight / 2,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HistoryScreen()));
                          },
                          child: const Text(
                            "History",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        ClipOval(
                          child: Material(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CurrencyScreen()));
                              },
                              splashColor: Colors.blue,
                              child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Center(
                                  child: ImageIcon(
                                    size: 25,
                                    AssetImage("assets/currency_icon.png"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    //TODO: change this to result and real-time output
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("First"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Second")
                      ],
                    ),
                  ],
                ),
              )),
          Container(
            //TODO: Modify colours to one place
            color: const Color.fromARGB(255, 179, 177, 177),
            width: screenWidth,
            height: screenHeight / 2,
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(value: "C"),
                    ButtonWidget(value: "7"),
                    ButtonWidget(value: "4"),
                    ButtonWidget(value: "1"),
                    ButtonWidget(value: "%"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(value: "÷"),
                    ButtonWidget(value: "8"),
                    ButtonWidget(value: "5"),
                    ButtonWidget(value: "2"),
                    ButtonWidget(value: "0"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(value: "×"),
                    ButtonWidget(value: "9"),
                    ButtonWidget(value: "6"),
                    ButtonWidget(value: "3"),
                    ButtonWidget(value: "."),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidget(value: "⌫"),
                    ButtonWidget(value: "−"),
                    ButtonWidget(value: "+"),
                    ButtonWidget(value: "="),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
