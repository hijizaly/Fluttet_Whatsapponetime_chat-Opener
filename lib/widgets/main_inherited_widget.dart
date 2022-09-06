import 'package:flutter/material.dart';

class MainInheritedWidget extends InheritedWidget{
  final String inputPhoneNumberfinal;
  final Widget child;
  final Function phoneNumberInputFuc;
  final bool isValidNumber;
  final Function phoneNumberValidityFuc;

  // MainInheritedWidget({required super.child});
  MainInheritedWidget({required this.inputPhoneNumberfinal, required this.child, required this.phoneNumberInputFuc,required this.isValidNumber,required this.phoneNumberValidityFuc}) : super(child: child);

  static MainInheritedWidget? of(BuildContext context){
    return(context.dependOnInheritedWidgetOfExactType<MainInheritedWidget>());
  }
  @override
  bool updateShouldNotify(covariant MainInheritedWidget oldWidget) {
    return inputPhoneNumberfinal != oldWidget.inputPhoneNumberfinal;
  }
}


