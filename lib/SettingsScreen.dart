import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
        fontSize: 14,
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
          title: Text("Settings"),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bgimage.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                child: Column(
                  children: <Widget>[
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
                                        "assets/svgs/reset_password.png"),
                                    height: cardImageHeight),
                                Text(
                                  'Reset Password',
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
