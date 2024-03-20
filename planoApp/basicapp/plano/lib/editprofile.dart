// import 'package:flutter/material.dart';

// class EditviewProfilePage extends StatefulWidget {
//   final String name;
//   final String phone;
//   final String address;
//   final String email;
//   final Function(String, String, String, String) onProfileUpdated;

//   const EditviewProfilePage({
//     required this.name,
//     required this.phone,
//     required this.address,
//     required this.email,
//     required this.onProfileUpdated,
//   });

//   @override
//   _EditviewProfilePageState createState() => _EditviewProfilePageState();
// }

// class _EditviewProfilePageState extends State<EditviewProfilePage> {
//   late TextEditingController _nameController;
//   late TextEditingController _phoneController;
//   late TextEditingController _addressController;
//   late TextEditingController _emailController;

//   @override
//   void initState() {
//     super.initState();
//     _nameController = TextEditingController(text: widget.name);
//     _phoneController = TextEditingController(text: widget.phone);
//     _addressController = TextEditingController(text: widget.address);
//     _emailController = TextEditingController(text: widget.email);
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Edit Profile',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.indigo,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   color: Colors.grey[200],
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 10.0),
//                 child: TextFormField(
//                   controller: _nameController,
//                   decoration: InputDecoration(
//                     hintText: 'Name',
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   color: Colors.grey[200],
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 10.0),
//                 child: TextFormField(
//                   controller: _phoneController,
//                   decoration: InputDecoration(
//                     hintText: 'Phone',
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   color: Colors.grey[200],
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 10.0),
//                 child: TextFormField(
//                   controller: _addressController,
//                   decoration: InputDecoration(
//                     hintText: 'Address',
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   color: Colors.grey[200],
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 10.0),
//                 child: TextFormField(
//                   controller: _emailController,
//                   decoration: InputDecoration(
//                     hintText: 'Email',
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                   color: Colors.indigo,
//                 ),
//                 child: TextButton(
//                   onPressed: () {
//                     widget.onProfileUpdated(
//                       _nameController.text,
//                       _phoneController.text,
//                       _addressController.text,
//                       _emailController.text,
//                     );
//                     Navigator.pop(context);
//                   },
//                   child: Text(
//                     'Save Changes',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _phoneController.dispose();
//     _addressController.dispose();
//     _emailController.dispose();
//     super.dispose();
//   }
// }















import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditviewProfilePage extends StatefulWidget {
  final String name;
  final String phone;
  final String address;
  final String email;
  // final int id; // Add id to identify the user profile

  const EditviewProfilePage({
    required this.name,
    required this.phone,
    required this.address,
    required this.email, required Null Function(dynamic name, dynamic phone, dynamic address, dynamic email) onProfileUpdated,
    // required this.id, required Null Function(dynamic name, dynamic phone, dynamic address, dynamic email) onProfileUpdated,
  });

  @override
  _EditviewProfilePageState createState() => _EditviewProfilePageState();
}

class _EditviewProfilePageState extends State<EditviewProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _addressController;
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _phoneController = TextEditingController(text: widget.phone);
    _addressController = TextEditingController(text: widget.address);
    _emailController = TextEditingController(text: widget.email);
  }

  Future<void> _updateProfile() async {
    final String apiUrl = 'http://10.0.2.2:4040/userEditProfile';// Assuming this is your API endpoint
                       
    
    final response = await http.post(Uri.parse(apiUrl), body: {
      // 'id': widget.id.toString(),
      'name': _nameController.text,
      'phone': _phoneController.text,
      'address': _addressController.text,
      'email': _emailController.text,
    });
    print(response.body);

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Profile Updated Successfully'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to update profile'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _updateProfile,
                  child: Text('Save Changes'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}













// import 'package:flutter/material.dart';
// import 'package:plano/editservice.dart';


// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key, required String name, required String phone, required String address, required String email, required int id, required Null Function(dynamic name, dynamic phone, dynamic address, dynamic email) onProfileUpdated});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();

//   //create the service class object
//   Service service = Service();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Registration Page'),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             Text('Name'),
//             SizedBox(
//               height: 5,
//             ),
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter Name',
//               ),
//             ),
//             //for some space bwtween fields
//             SizedBox(
//               height: 10,
//             ),
//             Text('Email'),
//             SizedBox(
//               height: 5,
//             ),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter Email',
//               ),
//             ),
//             //for some space bwtween fields
//             SizedBox(
//               height: 10,
//             ),
//             Text('Mobile'),
//             SizedBox(
//               height: 5,
//             ),
//             TextField(
//               controller: mobileController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter Mobile',
//               ),
//             ),
//             //for some space bwtween fields
//             SizedBox(
//               height: 10,
//             ),
//             Text('Address'),
//             SizedBox(
//               height: 5,
//             ),
//             TextField(
//               controller: addressController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Enter Address',
//               ),
//             ),
//             //for some space bwtween fields
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print(nameController);
//                 service.saveUser(nameController.text, mobileController.text,
//                     emailController.text, addressController.text);
//               },
//               child: Text(
//                 'Register',
//                 style: TextStyle(
//                   fontSize: 25,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }




