// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Theme.of(context).primaryColor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   width: double.infinity,
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//                   margin:
//                       const EdgeInsets.symmetric(vertical: 85, horizontal: 20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Theme.of(context).primaryColor,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Theme.of(context).hintColor.withOpacity(0.2),
//                         //  spreadRadius: 1,
//                         blurRadius: 20,
//                         offset: Offset(0, 10), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   child: Form(
//                     key: globalFormKey,
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(
//                           height: 25,
//                         ),
//                         Text('Login',
//                             style: Theme.of(context).textTheme.headlineLarge),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           keyboardType: TextInputType.emailAddress,
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'Please enter your email';
//                             } else if (!RegExp(
//                                     r"^[a-zA-Z0-9,a-zA-Z0-9,!#$%&'*+-/=?^_`{|~}]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                 .hasMatch(value)) {
//                               return 'Please enter a valid email';
//                             }
//                             return null;
//                           },
//                           decoration: InputDecoration(
//                               hintText: "Email address",
//                               enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: Theme.of(context).hintColor,
//                                 ),
//                               ),
//                               focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                   color: Theme.of(context).hintColor,
//                                 ),
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.email,
//                                 color: Theme.of(context).primaryColor,
//                               )),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../api/api_service.dart';
// import '../model/login_model.dart';

// import '../ProgressHUD.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool hidePassword = true;
//   bool isApiCallProcess = false;
//   GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
//   late LoginRequestModel loginRequestModel;
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   void initState() {
//     super.initState();
//     loginRequestModel = LoginRequestModel(email: '', password: '');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ProgressHUD(
      
//       child: _uiSetup(context),
//       inAsyncCall: isApiCallProcess,
//       opacity: 0.3,
//     );
//   }

//   Widget _uiSetup(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: Theme.of(context).accentColor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   width: double.infinity,
//                   padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//                   margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Theme.of(context).primaryColor,
//                     boxShadow: [
//                       BoxShadow(
//                           color: Theme.of(context).hintColor.withOpacity(0.2),
//                           offset: Offset(0, 10),
//                           blurRadius: 20)
//                     ],
//                   ),
//                   child: Form(
//                     key: globalFormKey,
//                     child: Column(
//                       children: <Widget>[
//                         SizedBox(height: 25),
//                         Text(
//                           "Login",
//                           style: Theme.of(context).textTheme.headline2,
//                         ),
//                         SizedBox(height: 20),
//                         new TextFormField(
//                           keyboardType: TextInputType.emailAddress,
//                           onSaved: (input) => loginRequestModel.email = input,
//                           validator: (input) => !input.contains('@')
//                               ? "Email Id should be valid"
//                               : null,
//                           decoration: new InputDecoration(
//                             hintText: "Email Address",
//                             enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context)
//                                         .accentColor
//                                         .withOpacity(0.2))),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context).accentColor)),
//                             prefixIcon: Icon(
//                               Icons.email,
//                               color: Theme.of(context).accentColor,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         new TextFormField(
//                           style:
//                               TextStyle(color: Theme.of(context).accentColor),
//                           keyboardType: TextInputType.text,
//                           onSaved: (input) =>
//                               loginRequestModel.password = input,
//                           validator: (input) => input.length < 3
//                               ? "Password should be more than 3 characters"
//                               : null,
//                           obscureText: hidePassword,
//                           decoration: new InputDecoration(
//                             hintText: "Password",
//                             enabledBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context)
//                                         .accentColor
//                                         .withOpacity(0.2))),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(
//                                     color: Theme.of(context).accentColor)),
//                             prefixIcon: Icon(
//                               Icons.lock,
//                               color: Theme.of(context).accentColor,
//                             ),
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   hidePassword = !hidePassword;
//                                 });
//                               },
//                               color: Theme.of(context)
//                                   .accentColor
//                                   .withOpacity(0.4),
//                               icon: Icon(hidePassword
//                                   ? Icons.visibility_off
//                                   : Icons.visibility),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                         FlatButton(
//                           padding: EdgeInsets.symmetric(
//                               vertical: 12, horizontal: 80),
//                           onPressed: () {
//                             if (validateAndSave()) {
//                               print(loginRequestModel.toJson());

//                               setState(() {
//                                 isApiCallProcess = true;
//                               });

//                               APIService apiService = new APIService();
//                               apiService.login(loginRequestModel).then((value) {
//                                 if (value != null) {
//                                   setState(() {
//                                     isApiCallProcess = false;
//                                   });

//                                   if (value.token.isNotEmpty) {
//                                     final snackBar = SnackBar(
//                                         content: Text("Login Successful"));
//                                     scaffoldKey.currentState
//                                         .showSnackBar(snackBar);
//                                   } else {
//                                     final snackBar =
//                                         SnackBar(content: Text(value.error));
//                                     scaffoldKey.currentState
//                                         .showSnackBar(snackBar);
//                                   }
//                                 }
//                               });
//                             }
//                           },
//                           child: Text(
//                             "Login",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           color: Theme.of(context).accentColor,
//                           shape: StadiumBorder(),
//                         ),
//                         SizedBox(height: 15),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   bool validateAndSave() {
//     final form = globalFormKey.currentState;
//     if (form.validate()) {
//       form.save();
//       return true;
//     }
//     return false;
//   }
// }
