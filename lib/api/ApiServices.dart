// ///////////////////////////////// LOGIN API////////////////////////////////////


// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ApiServices{
//   ApiServices(param0);


//   Future <LoginApiResponse> apiCallLogin(Map<String,dynamic> param) async{
    
//     var url = Uri.parse("https://mtestsd.rbkei.in/api/CreateTokan");
//     var response = await http.post(url, body: param);
   
//     print('Response status: ${response.statusCode}');
//     print('Response body: ${response.body}');
   
//     final data = jsonDecode(response.body);
//     return LoginApiResponse(token: data["token"], error: data["error"]);
//   }
// }


// class LoginApiResponse{
//   final String? token;
//   final String? error;

//   LoginApiResponse({this.token,this.error});

// }


