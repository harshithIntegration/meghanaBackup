// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/material.dart';
// import 'package:testingpurpose/adminPanel/adminuser.dart';
// // import 'package:testingpurpose/changePic.dart';
// // import 'package:testingpurpose/loginIOS.dart';

// // void main() {
// //   runApp(const MyApp());
// // }
// void main() {
//   runApp(
//     // DevicePreview(builder: ((context) =>const MyApp() )),
//     const MyApp(),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//    return const  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // locale:DevicePreview.locale(context) ,
//       // builder: DevicePreview.appBuilder,
//       // theme: ThemeData.light(),
//       // darkTheme: ThemeData.dark(),
//       // home: PhotoEditingPage(),
//       home:const RegisterPage(user:null,),
//     );
//   }
// }





import 'package:flutter/material.dart';
// import 'package:testingpurpose/newApp/committee.dart';
import 'package:testingpurpose/newApp/speakers.dart';
// import 'package:testingpurpose/newApp/exhibitors.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
  //  home: ExhibitorsPage(),
  // home: CommitePage(),
  home: SpeakerPage(),

    );
  }
}











// IT IS FOR ADMIN LOGIN PAGE
// import 'package:flutter/material.dart';
// import 'package:testingpurpose/adminPanel/adminuser.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Simulate user authentication. In a real app, you would replace this with actual authentication logic.
//     final currentUser = User(isAdmin: true); // Assuming the user is an admin

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: RegisterPage(user: currentUser),
//     );
//   }
// }
