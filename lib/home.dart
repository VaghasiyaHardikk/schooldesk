import 'dart:convert';
import 'package:rbkei/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:rbkei/register.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'Register_with_Otp.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  ///////////////////////Login Api///////////////////////////
  final UserNameController = TextEditingController();
  final passwordController = TextEditingController();
  
  var  SerialNumber ;
  
  var SessionHostId;
  
  var HostMAC ;
  
  var HostName ;
  
  var LastSeen ;
  
  var LocalIP ;
  
  var LoginProvider ;
  
  var NotificationToken ;
  
  var ProviderKey ;
  
  var PublicIP ;

  void login(String UserName , Password, SerialNumber, SessionHostId, HostName, HostMAC,
   LoginProvider, ProviderKey, LastSeen, PublicIP, LocalIP, NotificationToken) async {

    try {
      Response response = await post(
        Uri.parse('https://mtestsd.rbkei.in/api/CreateTokan'),
        body: {
          'UserName' : UserName,
          'Password' : Password,
          'SerialNumber' : SerialNumber,
          'SessionHostId' : SessionHostId,
          'HostName' : HostName,
          'HostMAC' : HostMAC,
          'LoginProvider' : LoginProvider,
          'ProviderKey' : ProviderKey,
          'LastSeen' : LastSeen,
          'PublicIP' : PublicIP,
          'LocalIP' : LocalIP,
          'NotificationToken' :  NotificationToken
        }
      );
      if (response.statusCode == 200){
        var data =jsonDecode(response.body.toString());
        print(data);
        print('success');
      } else{
        print('failed');
      }
      
    } catch (e) {
      print(e.toString());
    }
  }
////////////////////////////Login Api End////////////////////////////////
 
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.amber,
        systemNavigationBarDividerColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));
    // ignore: unused_element
    Future hideBar() async =>
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: [SystemUiOverlay.top]);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(
                  top: 25.0,
                ),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 10,
                        width: 30,
                      ),
                      Image.asset(
                        'assets/bee.png',
                        height: 80.0,
                        width: 120.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: AutoSizeText(
                          'SCHOOL DESK',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 18, letterSpacing: 5),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: AutoSizeText(
                          'Login',
                          style: TextStyle(fontSize: 20, letterSpacing: 2),
                        ),
                      ),
                    ],
                  ),

                  ///////////////////*Email*/////////////////
                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 27),
                    decoration: const BoxDecoration(),
                    child: TextField(
                      controller: UserNameController,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.amber,
                      decoration: InputDecoration(
                        labelText: 'Your E-mail',
                        hintText: 'abc@gmail.com',
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(27)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide(color: Colors.black45)
                        ),
                      ),
                    ),
                  ),

                  ////////////////////*Password*////////////////////

                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 27),
                    decoration: const BoxDecoration(),
                    child: TextField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.amber,
                      obscureText: true,
                      decoration: InputDecoration(
                        hoverColor: Colors.amber,
                        labelText: 'Password:',
                        hintText: '****',
                        suffixIcon: InkWell(child: Icon(Icons.visibility)),
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(color: Colors.black45, fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(27)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide(color: Colors.black45)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                    GestureDetector(
                      onTap: () {
                        login(UserNameController.text.toString(), 
                        passwordController.text.toString(), 
                        SerialNumber.toString(), 
                        SessionHostId.toString(), 
                        HostName.toString(), 
                        HostMAC.toString(), 
                        LoginProvider.toString(), 
                        ProviderKey.toString(), 
                        LastSeen.toString(), 
                        PublicIP.toString(), 
                        LocalIP.toString(), 
                        NotificationToken.toString());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(27)),
                          child: Center(child: Text('Login'),),height: 50,),
                      ),
                    ),

                  //////////////////////**Login button*/////////////////////////////

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 30,
                  //     right: 30,
                  //     top: 27,
                  //   ),
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       primary: Colors.amber,
                  //       elevation: 1,
                  //       minimumSize: const Size(70, 55),
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(30)),
                  //     ),
                  //     child: const AutoSizeText(
                  //       'Login',
                  //       style: TextStyle(
                  //           fontSize: 19,
                  //           fontWeight: FontWeight.w400,
                  //           color: Colors.white),
                  //     ),
                  //     onPressed: () {
                  //       // login(emailController.text.toString(),passwordController.text.toString());
                  //       // callLoginApi();
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => Home_Page()),
                  //       );
                  //     },
                  //   ),
                  // ),

                  ////////////////////////////////***////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Cant Login?',
                            style: TextStyle(color: Colors.black54)),
                        TextSpan(
                            text: ' Forgot Password',
                            style: TextStyle(color: Colors.blueAccent)),
                      ]),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Login With',
                            style: TextStyle(color: Colors.black)),
                      ]),
                    ),
                  ),

                  ///////////////* google and facebook button*//////////////////

                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0, right: 120.0),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(225, 255, 255, 255),
                        onPrimary: Colors.lightBlueAccent,
                        shadowColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white,
                              width: 0.1,
                            ),
                            borderRadius: BorderRadius.circular(100)),
                        minimumSize: Size(0, 50),
                      ),
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                      label: Text(
                        'Sign-In',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      onPressed: () {},
                    ),
                  ),
////////////////////////////////////////////////////////////////////////////////
                  TextButton(
                    child: Text(
                      "Dont have an account? Register",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.amber,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => register()),
                      );
                    },
                  ),

                  ////////////////////////////////OTP Login//////////////////////////////////
                  Container(
                    child: TextButton(
                      child: Text(
                        "Register Using OTP",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.only(bottom: 30.0),
                        primary: Colors.blueAccent,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Register_with_Otp()),
                        );
                      },
                    ),
                  ),
////////////////////////////////Privacy Policy//////////////////////////////////////////
                  SizedBox(
                    child: Container(
                      child: TextButton(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.only(bottom: 38.0),
                          primary: Colors.blueAccent,
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => Privacy_Policy()),
                          // );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  }

 
