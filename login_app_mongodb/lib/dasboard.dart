import 'package:flutter/material.dart';
import 'package:login_app_mongodb/signIn_page.dart';
import 'package:login_app_mongodb/signUP_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  void SignOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SigninPage() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dashboard"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff1a5f8e),
              Color(0xffffffff),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const Text(
                  "Welcome to Dashboard, Our app is working now...",
                  style: TextStyle(fontSize: 20),textAlign: TextAlign.center,
                ),

              const SizedBox(height: 20),
              ElevatedButton(onPressed: ()=> SignOut(), child: Text("SignOut"))
            ]
          ),
        )
      ),
    );
  }
}
