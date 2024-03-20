// import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
// class  MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,

//       ),
//       home:const MyHomePage(title: 'Register profile'),
//     );
//   }
  
// }
// class MyHomePage extends StatefulWidget{
//   const MyHomePage({super.key,required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body:const Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 children: [
//                   CircleAvatar(
//                     radius: 64,
//                     backgroundImage:NetworkImage('data:image/jpeg;base64,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') ,
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       );
//   }
// }
