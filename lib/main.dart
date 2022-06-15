import 'package:firstapp/services/auth.dart';
import 'package:firstapp/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firstapp/pages/home.dart';
import 'package:firstapp/pages/title.dart';
import 'package:firstapp/pages/login.dart';
import 'package:firstapp/pages/signup.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:firstapp/models/user.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/login': (context) => login(),
          '/signup': (context) => signup(),
        },
        home: FutureBuilder(
          // Initialize FlutterFire
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return StreamProvider<MyUser?>.value(
                  catchError: (context, e) {
                    print(e.toString());
                  },
                  initialData: null,
                  value: AuthService().user,
                  child: Wrapper());
            }

            return title();
          },
        ));
  }
}
