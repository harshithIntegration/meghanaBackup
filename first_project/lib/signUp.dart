// import 'package:csc_picker/csc_picker.dart';
// import 'package:first_project/forgotPassword.dart';
// import 'package:flutter/material.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   bool passToggle = true;
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _mobileController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//     // final TextEditingController _countryController = TextEditingController();


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon:const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
        
//         title:const Text('SignUp'),
//         centerTitle: true,
//         backgroundColor:Colors.red,
//         titleTextStyle:const TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
        
//       ),
    
//  body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
            
//                                           const SizedBox(height: 10.0),
//                           TextFormField(
//                             controller: _nameController,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your name';
//                               }
//                               return null;
//                             },
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               labelText: 'Name',
//                               labelStyle: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                               prefixIcon: const Icon(Icons.perm_identity, color: Color.fromARGB(255, 65, 63, 63)),
//                             ),
//                           ),
//                           const SizedBox(height: 10.0),
//                           TextFormField(
//                             controller: _mobileController,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your mobile number';
//                               }
//                               if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
//                                 return 'Please enter a valid 10-digit mobile number';
//                               }
//                               return null;
//                             },
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               labelText: 'Mobile Number',
//                               labelStyle: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                               prefixIcon: const Icon(Icons.phone, color: Color.fromARGB(255, 65, 63, 63)),
//                             ),
//                           ),
//                           const SizedBox(height: 10.0),
//                           TextFormField(
//                             controller: _emailController,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               labelText: 'Email',
//                               labelStyle: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                               prefixIcon: const Icon(Icons.email, color: Color.fromARGB(255, 65, 63, 63)),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Please enter your email';
//                               } else if (!RegExp(
//                                       r"^[a-zA-Z0-9,a-zA-Z0-9,!#$%&'*+-/=?^_`{|~}]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                   .hasMatch(value)) {
//                                 return 'Please enter a valid email';
//                               }
//                               return null;
//                             },
//                           ),
//                           const SizedBox(height: 10.0),
//                           TextFormField(
//                             controller: _passwordController,
//                             obscureText: passToggle,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               labelText: 'Password',
//                               labelStyle: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                               prefixIcon: const Icon(Icons.lock_outlined, color: Color.fromARGB(255, 65, 63, 63)),
//                               suffixIcon: InkWell(
//                                 onTap: () {
//                                   setState(() {
//                                     passToggle = !passToggle;
//                                   });
//                                 },
//                                 child: Icon(passToggle ? Icons.visibility_off : Icons.visibility),
//                               ),
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return 'Please enter your password';
//                               } else if (value.length < 6) {
//                                 return 'Password must be at least 6 characters';
//                               }
//                               return null;
//                             },
//                           ),

//                            const SizedBox(height: 10.0),
//                            CSCPicker(
                              
//                                onCountryChanged:(country){},
                              
//                                onStateChanged: (state){},
//                                onCityChanged: (city){},
//                                layout: Layout.horizontal,
                              
//                             // defaultCountry:(CscCountry.India),
//                              ///placeholders for dropdown search field
//                   countrySearchPlaceholder: "Country",
//                   stateSearchPlaceholder: "State",
//                   citySearchPlaceholder: "City",

// ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
//                   // disabledDropdownDecoration: BoxDecoration(
//                   //     borderRadius:const BorderRadius.all(Radius.circular(6)),
//                   //     color: Colors.white,
//                   //     border:
//                   //     Border.all(color: Colors.black),
//                   //     ),
                     
                 
                           
                               
//                             ),

//                           // TextFormField(
                            
//                           //   controller: _countryController,
                          
//                           //   validator: (value) {
//                           //     if (value == null || value.isEmpty) {
//                           //       return 'Please enter your country';
//                           //     }
//                           //     return null;
//                           //   },
//                           //   decoration: InputDecoration(
//                           //     border: OutlineInputBorder(
//                           //       borderRadius: BorderRadius.circular(5),
//                           //     ),
//                           //     labelText: 'country',
                              
//                           //     labelStyle: const TextStyle(
//                           //       color: Colors.black,
//                           //       fontSize: 20,
//                           //       fontWeight: FontWeight.w400,
//                           //     ),
//                           //     prefixIcon: const Icon(Icons.location_on, color: Color.fromARGB(255, 65, 63, 63)),
//                           //   ),
//                           // ),
//                           const SizedBox(height: 10.0),

//                         ElevatedButton(
//                             onPressed: () {
//                               if (_formKey.currentState!.validate()) {
//                                 Navigator.pop(
//                                   context,
//                                   MaterialPageRoute(builder: (context) => const ResetPasswordPage()),
//                                 );
//                               }
//                             },
//                             child: Text('SignUp'),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.red,
//                               foregroundColor: Colors.white,
//                             ),
//                           ),

//               ]
//             ),
//           ),
//           ),
//     );
// }
// }






// import 'package:csc_picker/csc_picker.dart';
// import 'package:first_project/forgotPassword.dart';
// import 'package:flutter/material.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({Key? key}) : super(key: key);

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   bool passToggle = true;
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _mobileController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         title: Text('SignUp'),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//         titleTextStyle: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 50.0, // Adjust the height of TextFields
//                   child: TextFormField(
//                     controller: _nameController,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your name';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       labelText: 'Name',
//                       labelStyle: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       prefixIcon: Icon(Icons.perm_identity, color: Color.fromARGB(255, 65, 63, 63)),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 SizedBox(
//                   height: 50.0, // Adjust the height of TextFields
//                   child: TextFormField(
//                     controller: _mobileController,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your mobile number';
//                       }
//                       if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
//                         return 'Please enter a valid 10-digit mobile number';
//                       }
//                       return null;
//                     },
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       labelText: 'Mobile Number',
//                       labelStyle: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       prefixIcon: Icon(Icons.phone, color: Color.fromARGB(255, 65, 63, 63)),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 SizedBox(
//                   height: 50.0, // Adjust the height of TextFields
//                   child: TextFormField(
//                     controller: _emailController,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       labelText: 'Email',
//                       labelStyle: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 65, 63, 63)),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter your email';
//                       } else if (!RegExp(
//                               r"^[a-zA-Z0-9,a-zA-Z0-9,!#$%&'*+-/=?^_`{|~}]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                           .hasMatch(value)) {
//                         return 'Please enter a valid email';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 SizedBox(
//                   height: 50.0, // Adjust the height of TextFields
//                   child: TextFormField(
//                     controller: _passwordController,
//                     obscureText: passToggle,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       labelText: 'Password',
//                       labelStyle: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w400,
//                       ),
//                       prefixIcon: Icon(Icons.lock_outlined, color: Color.fromARGB(255, 65, 63, 63)),
//                       suffixIcon: InkWell(
//                         onTap: () {
//                           setState(() {
//                             passToggle = !passToggle;
//                           });
//                         },
//                         child: Icon(passToggle ? Icons.visibility_off : Icons.visibility),
//                       ),
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter your password';
//                       } else if (value.length < 6) {
//                         return 'Password must be at least 6 characters';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 Container(
//                   height: 300.0, // Adjust the height of CSCPicker
//                   child: CSCPicker(
//                     onCountryChanged: (country) {},
//                     onStateChanged: (state) {},
//                     onCityChanged: (city) {},
//                     layout: Layout.horizontal,
//                     countrySearchPlaceholder: "Country",
//                     stateSearchPlaceholder: "State",
//                     citySearchPlaceholder: "City",
//                   ),
//                 ),
//                 const SizedBox(height: 10.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       Navigator.pop(
//                         context,
//                         MaterialPageRoute(builder: (context) => const ResetPasswordPage()),
//                       );
//                     }
//                   },
//                   child: Text('SignUp'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                     foregroundColor: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }







import 'package:csc_picker/csc_picker.dart';
import 'package:first_project/forgotPassword.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passToggle = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('SignUp'),
        centerTitle: true,
        backgroundColor: Colors.red,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0, // Adjust the height of TextFields
                  child: TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(Icons.perm_identity, color: Color.fromARGB(255, 65, 63, 63)),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 50.0, // Adjust the height of TextFields
                  child: TextFormField(
                    controller: _mobileController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                        return 'Please enter a valid 10-digit mobile number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(Icons.phone, color: Color.fromARGB(255, 65, 63, 63)),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 50.0, // Adjust the height of TextFields
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 65, 63, 63)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(
                              r"^[a-zA-Z0-9,a-zA-Z0-9,!#$%&'*+-/=?^_`{|~}]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 50.0, // Adjust the height of TextFields
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(Icons.lock_outlined, color: Color.fromARGB(255, 65, 63, 63)),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  
                  height: 150.0, // Adjust the height of CSCPicker
                  child: CSCPicker(
                    onCountryChanged: (country) {},
                    onStateChanged: (state) {},
                    onCityChanged: (city) {},
                    layout: Layout.horizontal,
                    countrySearchPlaceholder: "Country",
                    stateSearchPlaceholder: "State",
                    citySearchPlaceholder: "City",
                     defaultCountry: CscCountry.India,
                   showStates: true,
                   showCities: false,

                    
                  ),
                ),
                const SizedBox(height: 10.0),
               
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => const ResetPasswordPage()),
                        );
                      }
                    },
                    child: Text('SignUp'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                
              ],

            ),
          ),
        ),
      ),
    );
  }
}
