import 'package:flutter/material.dart';
import 'package:untitled/login_screen.dart';

class REGISTER_SCREEN extends StatefulWidget {
  const REGISTER_SCREEN({super.key});

  @override
  State<REGISTER_SCREEN> createState() => _REGISTER_SCREENState();
}

class _REGISTER_SCREENState extends State<REGISTER_SCREEN> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _countryCodeController = TextEditingController(text: "+225");
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/background_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SafeArea(

            child: Padding(
              padding: const EdgeInsets.only(top: 30.0,left: 16),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 8,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const SizedBox(height: 20),


                        TextFormField(
                          controller: _fullNameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your full name";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: 'Full Name',
                            hintStyle: const TextStyle(color: Colors.black),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                            prefixIcon: Icon(Icons.person_outline, color: Colors.blue),
                             ),
                        ),

                        const SizedBox(height: 10),

                        TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            }

                            return null;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined, color: Colors.blue),
                            hintText: 'Email',
                            hintStyle: const TextStyle(color: Colors.black),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                          ),
                        ),
                        const SizedBox(height: 10),
                      TextFormField(
                          controller: _mobileNumberController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter mobile number";
                            }

                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Mobile Number',
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

                        TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                            }
                            if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline, color: Colors.blue),
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.black),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

                          ),

                        ),
                        const SizedBox(height: 30),

                        Container( width: double.infinity,
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
                              "Create Account",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),

                        const SizedBox(height: 60),

                        const Text(
                          "or sign in using",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ), child: Text("Facebook",style: TextStyle(color: Colors.white),)),
                            ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Text("Google",style: TextStyle(color: Colors.white),
                              ),
                            )


                          ],
                        ),
                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Text(
                              "By creating an account, you agree to our ",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(
                              "Terms",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.greenAccent, fontSize: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                  color: Colors.grey

                              ),
                            ),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                              },
                              child: Text( "Sign In",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14


                                ),
                              ),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
