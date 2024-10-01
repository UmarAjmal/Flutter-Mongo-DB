import 'package:flutter/material.dart';
import 'package:login_app_mongodb/signIn_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool _isNotValid = false;
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff1a5f8e),
                Color(0xffffffff),
              ],
            ),
          ),
          child: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.white),
                            filled: false,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white),
                            filled: false,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: confirmPasswordController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.white),
                            filled: false,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.black),
                          ),
                          // style:ButtonStyle(
                          //   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20.0)),) ,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Do you have already an account?",
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            MaterialPageRoute(builder: (context) => SigninPage());                     },
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.black),
                          ),
                          // style:ButtonStyle(
                          //   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20.0)),) ,
                        ),
                      )
                    ]),
              )),),
    );
  }
}
