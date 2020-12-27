import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_application/SettingsScreen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: MediaQuery.of(context).size.width * 0.03,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(63, 63, 63, 1));
    double cardBorderRound = 10.0;
    double cardImageHeight = MediaQuery.of(context).size.width * 0.30;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          elevation: 0.1,
          centerTitle: false,
          title: Text("Dashboard"),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                exit(0);
              },
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/top_header.png')),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.09,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/originals/78/07/03/78070395106fcd1c3e66e3b3810568bb.jpg'),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Priyank Solanki',
                                style: TextStyle(
                                    fontFamily: "Montserrat Medium",
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.06),
                              ),
                              Text(
                                '17MCAL104',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    color: Colors.white,
                                    fontFamily: "Montserrat Regular"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: true,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRound)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                    image: AssetImage(
                                        "assets/svgs/personal_data.png"),
                                    height: cardImageHeight),
                                Text(
                                  'Profile',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRound)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                      "assets/svgs/course_schedule.png"),
                                  height: cardImageHeight,
                                ),
                                Text(
                                  'Time Table',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRound)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                      "assets/svgs/attendance_summary.png"),
                                  height: cardImageHeight,
                                ),
                                Text(
                                  'Attendance Summary',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRound)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/svgs/result.png"),
                                  height: cardImageHeight,
                                ),
                                Text(
                                  'Results',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRound)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/svgs/subject.png"),
                                  height: cardImageHeight,
                                ),
                                Text(
                                  'Subjects',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRound)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/svgs/tnp.png"),
                                  height: cardImageHeight,
                                ),
                                Text(
                                  'Placement',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(cardBorderRound)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                      "assets/svgs/acadamic_fees.png"),
                                  height: cardImageHeight,
                                ),
                                Text(
                                  'Acadamic Fees',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
