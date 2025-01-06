import 'package:flutter/material.dart';
class EDIT_PROFILE extends StatefulWidget {
  const EDIT_PROFILE({super.key});

  @override
  State<EDIT_PROFILE> createState() => _EDIT_PROFILEState();
}

class _EDIT_PROFILEState extends State<EDIT_PROFILE> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              //color: Colors.white,
            ),
            SizedBox(width: 10,),
            Text(
              "Edit profile",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

          ],
        ),

      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [

                Opacity(
                  opacity: 0.3,
                  child: ClipOval(
                    child: Image.asset(
                      "lib/assets/images/profile_images.jpg",
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  child: Image.asset("lib/assets/images/camera.png"),
                ),
              ],
            ),
          ),
              SizedBox(height: 20,),

              Text("Full Name"),
              TextFormField(
                controller: _fullNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your full name";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: 'John Smith',
                  hintStyle: const TextStyle(color: Colors.black),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                  prefixIcon: Icon(Icons.person_outline, color: Colors.blue),
                ),
              ),

              const SizedBox(height: 10),
              Text("Email"),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return "Please enter a valid email";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.blue),
                  hintText: 'johnsmith@gmail.com',
                  hintStyle: const TextStyle(color: Colors.black),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                ),
              ),
              const SizedBox(height: 10),
              Text("Mobile number"),
              TextFormField(
                controller: _mobileNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter mobile number";
                  }
                  if (!RegExp(r'^\d{6,15}$').hasMatch(value)) {
                    return "Invalid number";
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '698698966',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: InkWell(
                    onTap: () {
                      print("Open country code selector");
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.phone_android_outlined, color: Colors.blue),
                        SizedBox(width: 5),
                        Text(
                          '+225',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined, color: Colors.greenAccent),
                      ],
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),


              const SizedBox(height: 10),
              // Password Field

              SizedBox(height: 32),

              // Save Button
              Center(
                child: Container( width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.greenAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Update",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
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
}
