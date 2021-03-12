import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'application.dart';

class DisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF111328),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          margin: EdgeInsets.all(5.0),
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 95,
                      backgroundColor: Color(0xFFEB1555),
                      child: CircleAvatar(
                        radius: 92,
                        backgroundImage: AssetImage('images/BMI.jpg'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 50.0,
                      ),
                      child: Text(
                        'NEW BMI CALCULATOR',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 35.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.solidCheckCircle,
                            size: 40.0,
                            color: Color(0xFF00FF00),
                          ),
                          Text(
                            '  New Correct Formula',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.star,
                            size: 40.0,
                            color: Color(0xFF00CCFF),
                          ),
                          Text(
                            '  Approved By WHO',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.award,
                            size: 40.0,
                            color: Color(0xFFEB1555),
                          ),
                          Text(
                            '  Highly Accurate',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 85.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.solidHeart,
                            size: 40.0,
                            color: Colors.red,
                          ),
                          Text(
                            '  Created With Love',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(20.0),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BMICalculators()));
                },
                child: Expanded(
                  flex: 5,
                  child: Text(
                    'GO TO APP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ),
                color: Color(0xFFEB1555),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
