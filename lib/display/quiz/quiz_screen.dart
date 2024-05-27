import 'package:flutter/material.dart';
import 'package:signal_flags_app/display/quiz/components/body.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(onPressed: () {}, child: Text("Pomiń")),
          ],
        ),
        body: Body(),
        );
  }
}

