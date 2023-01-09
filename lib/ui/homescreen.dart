// import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapponetime_chat/action/url_luncher.dart';
import 'package:whatsapponetime_chat/constants/constants.dart';
import 'package:whatsapponetime_chat/widgets/intro_text.dart';
import 'package:whatsapponetime_chat/widgets/main_inherited_widget.dart';
import 'package:whatsapponetime_chat/widgets/phone_number_input.dart';
import 'package:whatsapponetime_chat/widgets/send_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size get devicesScreenSize {
    return MediaQuery.of(context).size;
  }
  late String inputtedPhoneNumber="";
  late bool numberIsValid=false;

  get opacityValue {
    if(Theme.of(context).primaryColor==Color(0xff000000)){
      // print("/////to white");
      return 0;
    }else{
      return 200;
    }
  }


  // get opacityValuee => return 100;
  String phoneNumberChecker(PhoneNumber phoneNumber){
    return inputtedPhoneNumber=phoneNumber.toString();
  }
  bool phoneNumberVerifier(numberIsValid_){
    // print(numberIsValid_);
    // print(inputedPhoneNumber);
    // print("samaki");
    chatLauncher(numberIsValid_, inputtedPhoneNumber);
    return numberIsValid=numberIsValid_;
  }
  void manualChatLauncher(){
      chatLauncher(numberIsValid, inputtedPhoneNumber);
  }



  @override
  Widget build(BuildContext context) {
    // print(opacityValue);
     const double opV=opacityValue_;
     print(opV);

    if(Theme.of(context).primaryColor==Color(0xff000000)){
      print("/////to white");
      // opV=0;
      // opacityValue_=0;
      // setter opacityValue_=0;
    }else{
      // opV=190;
    }
    return MainInheritedWidget(
      phoneNumberInputFuc: phoneNumberChecker,
      isValidNumber: numberIsValid,
      phoneNumberValidityFuc: phoneNumberVerifier,
      inputPhoneNumberfinal: inputtedPhoneNumber,

      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                elevation: 1,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(17),
                      image: const DecorationImage(
                          opacity: opV,
                          image: AssetImage('assets/images/backgrounds/OG.png'),
                          repeat: ImageRepeat.repeat)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: IntroText(), ////introText HERE,
                        ),
                      ),

                      const SizedBox(height: 5),
                      // SizedBox(
                      // width: _devicesScreenSize.width / 1.0,
                      // child: PhoneNumberInput(mainInheritedWidget: MainInheritedWidget,)
                      SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: PhoneNumberInput(
                              mainInheritedWidget: MainInheritedWidget.of(context),
                            ),
                          )),
                      // ),
                    ],
                  ),
                )),
          ),
        ),floatingActionButton: ChatOpenerAction(whatsappLuncher:manualChatLauncher)
      ),
    );
  }
}


