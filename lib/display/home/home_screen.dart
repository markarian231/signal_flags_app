import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/display/dataset/dataset_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_menu_screen.dart';
import 'package:signal_flags_app/display/quiz/quiz_screen.dart';
import 'package:signal_flags_app/display/signal/signal_menu_screen.dart';
import 'package:signal_flags_app/display/transmit/transmit_screen.dart';
import 'package:signal_flags_app/utils/constants.dart';
import 'package:signal_flags_app/utils/widget_utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sea.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 5),
                    Stack(alignment: Alignment(0.7, 1.0),
                      children: [
                        Image.asset(
                          'assets/images/two_flags.png',
                          width: 150, 
                          height: 150, 
                        ),
                        Center(
                      child: Text(
                        "Flagi Sygnałowe",
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 44,
                        ),
                      ),
                    ),
                      ],
                    ),
                    const Text(
                      "  Wybierz tryb",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 22,
                      ),
                    ),
                    const Spacer(flex: 4),
                    buildButton("Flagi", () => FlagsMenuScreen()), // widget instantiated only when user taps the button (GetX recommendation)
                    const SizedBox(height: 18),
                    buildButton("Sygnały", () => SignalMenuScreen()),
                    const SizedBox(height: 18),
                    buildButton("Nauka", () => DatasetScreen()),
                    const Spacer(flex: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
