import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rbkei/MainPages/calendar.dart';
import 'package:rbkei/MainPages/portfolios.dart';
import 'package:url_launcher/url_launcher.dart';

class navhome extends StatefulWidget {
  const navhome({Key? key}) : super(key: key);
  @override
  State<navhome> createState() => _navhomeState();
}

class _navhomeState extends State<navhome> {
  _launchURLApp() async {
    const url = 'https://rbkei.org/privacy_policy/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: (
         Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            // callLoginApi();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => portfolios()),
                            );
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // // border: Border.all(
                                  // //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.userGear,
                                      size: 51,
                                      color: Colors.amber,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:30.0),
                                      child: Text(
                                        "PORTFOLIO",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
      
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => calendar()),
                            );
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.calendarDays,
                                      size: 51,
                                      color: Colors.amber,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:30.0),
                                      child: Text(
                                        "CALENDAR",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            print('1 was clicked');
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.graduationCap,
                                      size: 51,
                                      color: Colors.amber,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:30.0),
                                      child: Text(
                                        "ACADEMIC",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
      
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            print('1 was clicked');
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.calendarDays,
                                      size: 51,
                                      color: Colors.amber,
                                    ),
                                
                                       Container(
                                         padding: EdgeInsets.only(top: 30),
                                         child: Text(
                                          "NOTICE BOARD",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey,),
                                      ),
                                       ),
                                  ],
                                )),
                          ),
                        ),
                      ),
      
                      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            print('1 was clicked');
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.userTie,
                                      size: 51,
                                      color: Colors.amber,
                                    ),
                                       Container(
                                         padding: EdgeInsets.only(top: 30),
                                         child: Text(
                                          "ACCOUNTS",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey,),
                                      ),
                                       ),
                                  ],
                                )),
                          ),
                        ),
                      ),
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            print('1 was clicked');
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.scroll,
                                      size: 51,
                                      color: Colors.amber,
                                    ),
                                       Container(
                                         padding: EdgeInsets.only(top: 30),
                                         child: Text(
                                          "ANNOUNCEMENTS",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey,),
                                      ),
                                       ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      _launchURLApp();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 400,
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('assets/privacypolicy.png'),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
