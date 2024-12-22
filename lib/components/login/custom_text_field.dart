import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldPhoneWidget extends StatelessWidget {
  const TextFieldPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: '+5 555 555 55 55',
        hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
        filled: true,
        fillColor: Color(0xFFFAFAFA),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(
            color: Color(0xFFF2F2F2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(
            color: Color(0xFFF2F2F2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(
            color: Color(0xFFF2F2F2),
          ),
        ),
      ),
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      maxLengthEnforcement: MaxLengthEnforcement.none,
    );
  }
}