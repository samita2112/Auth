import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/services/auth.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class common_nav_bar extends StatelessWidget implements PreferredSizeWidget {
  common_nav_bar({
    Key? key,
    required this.appBar,
    required AuthService auth,
  })  : _auth = auth,
        super(key: key);

  final AppBar appBar;

  final AuthService _auth;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: RichText(
        text: TextSpan(
          text: 'Stay Updated',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontFamily: 'Salsa',
            letterSpacing: 2.0,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushReplacementNamed(context, '/');
            },
        ),
      ),
      backgroundColor: Colors.teal,
      elevation: 1.0,
      actions: [
        PopupMenuButton(
            icon: Icon(Icons.menu),
            onSelected: (value) async {
              if (value == '/logout') {
                await _auth.signOut().then(
                    (value) => Navigator.pushReplacementNamed(context, '/'));
              }
            },
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Feedback"),
                    value: '/feedback',
                  ),
                  PopupMenuItem(
                    child: Text("Logout"),
                    value: '/logout',
                  )
                ]),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
