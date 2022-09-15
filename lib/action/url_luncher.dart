
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

void chatLauncher(numberIsValid,inputPhoneNumberfinalFromMainInherited) async {
  Fluttertoast.cancel();
  var whatsAppUrl =
      "whatsapp://send?phone=$inputPhoneNumberfinalFromMainInherited toString";
  if (numberIsValid == false) {
    Fluttertoast.showToast(
        msg: "Wrong phone number",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 10,
        backgroundColor: Colors.black38,
        textColor: Colors.white,
        fontSize: 20.0);
  } else {
    Fluttertoast.cancel();
    if (!await launch(whatsAppUrl)) throw 'Could not launch $whatsAppUrl';
  }
}

