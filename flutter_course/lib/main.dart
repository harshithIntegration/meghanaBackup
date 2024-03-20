import 'package:flutter/material.dart';
import 'package:flutter_course/CurrencyConverterMaterialPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home:CurrencyConverterMaterialPage(),
        );
  }
}





// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:flutter_course/profile_screen.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Register profile'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Uint8List? _image;

//   void selectImage() async {
//     Uint8List img = await pickImage(ImageSource.gallery);
//     setState(() {

//     });
//     _image = img;
//   }
//   void saveProfile(){

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: Container(
//           padding:const EdgeInsets.symmetric(
//             horizontal: 32
//             ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               const SizedBox(
//                 height: 24,
//               ),
//               Stack(
//                 children: [
//                   _image != null
//                       ? CircleAvatar(
//                           radius: 64,
//                           backgroundImage: MemoryImage(_image!),
//                         )
//                       :const CircleAvatar(
//                           radius: 64,
//                           backgroundImage: NetworkImage(
//                               'https://www.pngitem.com/pimgs/m/421-4212266_transparent-default-avatar-png-default-avatar-images-png.png'),
//                         ),
//                 Positioned(
//                     child: IconButton(
//                       onPressed: selectImage,
//                       icon:const Icon(Icons.add_a_photo),
//                     ),
//                     bottom: -5,
//                     left: 75,
//                   )
//                 ],
//               ),
//              const SizedBox(
//                 height: 24,
//               ),
//               const TextField(
//                 decoration: InputDecoration(
//                     hintText: 'Enter Name',
//                    contentPadding: EdgeInsets.all(10),
//                    border: OutlineInputBorder()
//                    ),
//               ),
//                const  SizedBox(
//                 height: 24,
//               ),
//                const TextField(
//                 decoration: InputDecoration(
//                     hintText: 'Mobile number',
//                    contentPadding: EdgeInsets.all(10),
//                    border: OutlineInputBorder()
//                    ),
//               ),
//              // const  SizedBox(
//              //    height: 24,
//              //  ),
//              //  const TextField(
//              //    decoration: InputDecoration(
//              //        hintText: 'Email',
//              //       contentPadding: EdgeInsets.all(10),
//              //       border: OutlineInputBorder()
//              //       ),
//              //  ),
//              // const   SizedBox(
//              //    height: 24,
//              //  ),
//              //  const TextField(
//              //    decoration: InputDecoration(
//              //        hintText: 'Password',
//              //       contentPadding: EdgeInsets.all(10),
//              //       border: OutlineInputBorder()
//              //       ),
//              //  ),
//               //
//               const  SizedBox(
//                 height: 24,
//               ),
//               ElevatedButton(onPressed: saveProfile, child:const Text('submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }






// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter MySQL Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SignUpPage(),
//     );
//   }
// }

// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   Future<void> _signUp() async {
//     if (_formKey.currentState!.validate()) {
//       final String name = _nameController.text.trim();
//       final String email = _emailController.text.trim();
//       final String password = _passwordController.text.trim();

//       // Replace 'http://your-backend-url/signup' with your backend server URL for signup endpoint
//       final response = await http.post(
//         Uri.parse('http://your-backend-url/signup'),
//         body: jsonEncode({
//           'name': name,
//           'email': email,
//           'password': password,
//         }),
//         headers: {'Content-Type': 'application/json'},
//       );

//       if (response.statusCode == 200) {
//         // Successful signup, handle navigation or show success message
//         print('Sign up successful!');
//         // You can navigate to another page or show a success message here
//       } else {
//         // Signup failed, handle error
//         print('Sign up failed');
//         // You can show an error message here
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   // Add email validation if needed
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(labelText: 'Password'),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter a password';
//                   }
//                   // Add password validation if needed
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _signUp,
//                 child: Text('Sign Up'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





