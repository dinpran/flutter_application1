import 'package:crack/homepage.dart';
import 'package:crack/login_page.dart';
import 'package:crack/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    title: "CRACK",
    debugShowCheckedModeBanner: false,
    home:
        Constants.prefs?.getBool("loggedIn") == true ? HomePage() : LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage()
    },
  ));
}
