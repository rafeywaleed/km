import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:km/Auth/Authentication.dart';
//import 'package:km/Homepage/(Old)HomePage.dart';
import 'package:km/Homepage/HomePage.dart';
import 'package:km/Pin/PinPage.dart';
import 'package:km/Profile/ProfilePage.dart';
import 'package:km/Settings/SettingsPage.dart';
import 'package:km/themes/old_theme.dart';

//import 'package:km/IntroScreens/Introscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KindMap',
      home: (FirebaseAuth.instance.currentUser != null)
          ? HomePage()
          : AuthenticationPage(),
      // themeMode: ThemeMode.dark,
      // darkTheme: CustomTheme.darkBase,
      // theme: CustomTheme.lightBase,
      routes: {
        'Auth': (context) => AuthenticationPage(),
        'Home': (context) => HomePage(),
        'Pin': (context) => PinPage(),
        'Settings': (context) => SettingsPage(),
        'Profile': (context) => ProfilePage(),
      },
    );
  }
}
