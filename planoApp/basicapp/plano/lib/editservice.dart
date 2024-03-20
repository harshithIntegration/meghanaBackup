import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Service {
  //create the method to save user

  Future<http.Response> saveUser(
      String userName, String userMobile, String userEmail, String userAddress) async {
    //create uri
    var uri = Uri.parse("http://10.0.0.2:4040/userEditProfile");

    //header
    Map<String, String> headers = {"Content-Type": "application/json"};
    //body
    Map data = {
      'userId': '1',
      'userName': '$userName',
      'userEmail': '$userEmail',
      'userMobile': '$userMobile',
      'userAddress': '$userAddress'
    };
    //convert the above data into json
    var body = json.encode(data);
    var response = await http.post(uri, headers: headers, body: body);

    //print the response body
    print("${response.body}");

    return response;
  }
}