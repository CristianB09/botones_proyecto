// ignore_for_file: prefer_const_constructors
// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const consh = 80.0;
Color inactiveCardColur = Color.fromARGB(255, 40, 40, 40);
Color activeCardColour = Color.fromARGB(255, 255, 93, 93);
Color malec = inactiveCardColur;
Color femalec = inactiveCardColur;
Color otroc = inactiveCardColur;

enum Gender {
  male,
  female,
  otro,
  ninguno,
}

// ignore: use_key_in_widget_constructors
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class Reusable extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables, invalid_required_named_param, use_key_in_widget_constructors
  Reusable({required this.colour, required this.content, required this.onPress});
  final Color colour;
  final Widget content;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
      child: content,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      ),
    );
  }
}

class ReusableIcon extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ReusableIcon({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        )
      ],
    );
  }
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.ninguno;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: duplicate_ignore
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColur,
                      content: ReusableIcon(
                          icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColur,
                      content: ReusableIcon(
                          icon: FontAwesomeIcons.venus, label: 'Female'),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.otro;
                      });
                    },
                      colour: selectedGender == Gender.otro
                          ? activeCardColour
                          : inactiveCardColur,
                      content: ReusableIcon(
                          icon: FontAwesomeIcons.question, label: 'Other'),
                    ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable(
              colour: Color.fromARGB(255, 40, 40, 40),
              content: ReusableIcon(icon: FontAwesomeIcons.mars, label: 'Male'),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusable(
                    colour: Color.fromARGB(255, 40, 40, 40),
                    content: ReusableIcon(
                        icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
                Expanded(
                  child: Reusable(
                    colour: Color.fromARGB(255, 40, 40, 40),
                    content: ReusableIcon(
                        icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 118, 0, 59),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: consh,
          ),
        ],
      ),
    );
  }
}
