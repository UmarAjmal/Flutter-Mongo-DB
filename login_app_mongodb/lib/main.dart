import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:login_app_mongodb/signUP_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dasboard.dart';
import 'signIn_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  runApp(MyApp(tokens: pref.getString('token')));
}

class MyApp extends StatelessWidget {
  final tokens;

  const MyApp({Key? key, this.tokens}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: (tokens != null && JwtDecoder.isExpired(tokens) == false)
          ? Dashboard()
          : Dashboard(),
    );
  }
}
