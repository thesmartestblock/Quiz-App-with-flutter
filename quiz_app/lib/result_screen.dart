import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.result, {super.key});

  final List<String> result;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(
            // vertical: 10,
            // horizontal: 40,
            ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...result.map((e) => Text(
                    e,
                    style: GoogleFonts.taiHeritagePro(
                      fontSize: 42,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ]),
      ),
    );
  }
}
