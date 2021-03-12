import 'package:bmi_new_calculator/constants.dart';
import 'package:bmi_new_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'display.dart';

class CreditsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Credits'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'BMI Calculator Is A Useful Measurement App That Measures BMI of Person. It Uses The BMI Formula To Calculate It. This App Is Created By ' +
                        'Aryan Garg'.toUpperCase() +
                        ' In 2021. Below Are Given My Contact Details.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF24d786),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 10.0,
                          child: ListTile(
                            leading: Icon(
                              FontAwesomeIcons.phoneAlt,
                              color: Color(0xFF111328),
                            ),
                            title: Text(
                              '+91 79869-57185',
                              style: TextStyle(
                                color: Color(0xFF111328),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 10.0,
                          child: ListTile(
                            leading: Icon(
                              FontAwesomeIcons.solidEnvelope,
                              color: Color(0xFF111328),
                            ),
                            title: Text(
                              'gargaryan82000@gmail.com',
                              style: TextStyle(
                                color: Color(0xFF111328),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 10.0,
                          child: ListTile(
                            leading: Icon(
                              FontAwesomeIcons.home,
                              color: Color(0xFF111328),
                            ),
                            title: Text(
                              '84, Bachittar Nagar, Patiala',
                              style: TextStyle(
                                color: Color(0xFF111328),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          shadowColor: Colors.black,
                          elevation: 10.0,
                          child: ListTile(
                            leading: Icon(
                              FontAwesomeIcons.globe,
                              color: Color(0xFF111328),
                            ),
                            title: Text(
                              'https://code08-ind.github.io/Portfolio_08/',
                              style: TextStyle(
                                color: Color(0xFF111328),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DisplayPage()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              color: kBottomContainerColor,
              width: double.infinity,
              height: kContainerHeight,
              child: Center(
                child: Text(
                  'RECALCULATE BMI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
