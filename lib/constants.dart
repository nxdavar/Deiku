import 'package:flutter/material.dart';

const APP_BAR_COLOR = const Color(0xFF91B2BE);
const PASTEL_DBLUE = const Color(0xFFF397b93);
const PASTEL_YELLOW = const Color(0xFFFfdfd96);

const kTMSTextStyle = TextStyle(
  color: Color(0xFFC86467),
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kSendButtonTextStyle = TextStyle(
  color: APP_BAR_COLOR,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: APP_BAR_COLOR, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  fillColor: Colors.black,
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: PASTEL_DBLUE, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: PASTEL_DBLUE, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
