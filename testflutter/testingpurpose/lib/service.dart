import 'package:flutter/material.dart';
import 'package:testingpurpose/user.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = User.fetchAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Users'),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: futureUsers,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  User user = snapshot.data![index];
                  return Card(
                    child: ListTile(
                      title: Text('Name: ${user.userName}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Email: ${user.userEmail}'),
                          // Text('Country: ${user.userCountry}'),
                          // Text('State: ${user.userState}'),
                          // Text('City: ${user.userCity}'),
                          Text('Mobile: ${user.userMobile}'),
                          // Text('Gender: ${user.userGender}'),
                          // Text('Department: ${user.userDepartment}'),
                          // Text('Sub Department: ${user.userSubDepartment}'),
                          Text('Address: ${user.userAddress}'),
                          // Text('Photo Link: ${user.userPhotoLink}'),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Text('No data available');
            }
          },
        ),
      ),
    );
  }
}










