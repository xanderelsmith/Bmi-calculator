import 'package:flutter/material.dart';

double kweight = 0;
double kheight = 0;
double kage = 0;
const ksize = 100.0;
const ktextsize = 30.0;
Color maleColor = Color(0x30211328);
Color femaleColor = Color(0x30211328);
const genderClickedColor = Color(0xFF1D1E33);
const kBottomContainerHeight = 80.0;
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

enum Gender { male, female, none }

void changeGEnderColor(Gender gender) {
  if (gender == Gender.male) {
    // ignore: unnecessary_statements
    maleColor = kInactiveCardColour;
    femaleColor = Color(0x30211328);
  }
  if (gender == Gender.female) {
    maleColor = Color(0x30211328);
    femaleColor = kInactiveCardColour;
  } else if (gender == Gender.none) {
    print('no gender selected');
  }
}

List<String> bmiResulttext = [
  'You are underweight,try eating more vegetables, food and fruits',
  'You are just fine, keep up the goodwork and exercise more',
  'You are overweight , exercise more and reduce fatty food and junks intake'
];
List<String> result = ['Underweight', 'Normal', 'Overweight'];
String kresult = '';
String kresultDetails = '';
double BMI = 0;
