import 'package:flutter/material.dart' show BuildContext, Colors, Container, EdgeInsets, FontWeight, RichText, StatelessWidget, TextAlign, TextSpan, TextStyle, Widget;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapponetime_chat/constants/constants.dart';

class IntroText extends StatelessWidget {
  // const IntroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: RichText(textAlign: TextAlign.left,
        text: TextSpan(
            text: 'Start a ',
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 30),
            children: const [
              TextSpan(
                  text: ' Whatsapp ',
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold)),
              TextSpan(text: 'chat without saving to contacts.')
            ]),
      ),
    );
  }
}
