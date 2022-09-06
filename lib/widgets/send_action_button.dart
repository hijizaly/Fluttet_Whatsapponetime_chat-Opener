import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapponetime_chat/constants/constants.dart';

class ChatOpenerAction extends StatelessWidget {
  final Function whatsappLuncher;

  ChatOpenerAction({required this.whatsappLuncher});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // width: MediaQuery.of(context).size.width*0.13,
        // height: MediaQuery.of(context).size.height*0.10,
        width: 70,
        height: 70,
        child: FittedBox(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: primaryColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(360.0)))),

            onPressed: whatsappLuncher as dynamic,
            child: Padding(
              padding: const EdgeInsets.all(88.0),
              child: SvgPicture.asset('assets/svg/icons/whatsapp-brands.svg'),
            ),
          ),
        ));
  }
}

