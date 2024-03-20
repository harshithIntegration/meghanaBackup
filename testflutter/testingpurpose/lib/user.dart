import 'dart:convert';
import 'package:http/http.dart' as http;


class User {
  final int userId;
  final String userName;
  final String userEmail;
  final String userCountry;
  final String userState;
  final String userCity;
  final String userPassword;
  final int userMobile;
  final String userGender;
  final String userDepartment;
  final String userSubDepartment;
  final String userAddress;
  final String userPhotoLink;

  User({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userCountry,
    required this.userState,
    required this.userCity,
    required this.userPassword,
    required this.userMobile,
    required this.userGender,
    required this.userDepartment,
    required this.userSubDepartment,
    required this.userAddress,
    required this.userPhotoLink,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      userName: json['userName'],
      userEmail: json['userEmail'],
      userCountry: json['userCountry'],
      userState: json['userState'],
      userCity: json['userCity'],
      userPassword: json['userPassword'],
      userMobile: json['userMobile'],
      userGender: json['userGender'],
      userDepartment: json['userDepartment'],
      userSubDepartment: json['userSubDepartment'],
      userAddress: json['userAddress'],
      userPhotoLink: json['userPhotoLink'],
    );
  }

  static Future<List<User>> fetchAllUsers() async {
    final response = await http.post(Uri.parse('http://192.168.1.118:4040/userDetails'));
       print(response);
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      print(list);
      return list.map((model) => User.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}