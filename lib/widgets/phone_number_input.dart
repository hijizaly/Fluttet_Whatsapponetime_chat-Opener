import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapponetime_chat/widgets/main_inherited_widget.dart';

class PhoneNumberInput extends StatefulWidget {
  final dynamic mainInheritedWidget;
  // final Function urlLaucher;

  PhoneNumberInput({Key? key, required this.mainInheritedWidget}) : super(key: key);
  @override
  State<PhoneNumberInput> createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  PhoneNumber number = PhoneNumber(isoCode: 'TZ');
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) {
        // print(number);
        var of = MainInheritedWidget.of(context);
        of?.phoneNumberInputFuc(number);
      },
      onInputValidated: (bool value) {
        // print(value);
        // print(number);
        var of=MainInheritedWidget.of(context);
        of?.phoneNumberValidityFuc(value);
      },
      selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
      ignoreBlank: false,
      autoValidateMode: AutovalidateMode.disabled,
      selectorTextStyle: const TextStyle(color: Colors.black, fontSize: 30),
      textStyle: const TextStyle(fontSize: 30),
      initialValue: number,
      textFieldController: controller,
      formatInput: false,
      keyboardType:
          const TextInputType.numberWithOptions(signed: true, decimal: true),
      inputBorder: const OutlineInputBorder(),
    );
  }
}
