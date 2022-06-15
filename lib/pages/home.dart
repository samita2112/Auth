import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/models/source_model.dart';

import 'package:firstapp/services/auth.dart';

import 'package:flutter/material.dart';
import 'package:firstapp/widgets/appbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final String apiUrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2022-04-25&sortBy=publishedAt&apiKey=d97a9bec9afe4ba9972e3546fd63d7fc";
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final AuthService _aauth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: common_nav_bar(appBar: AppBar(), auth: _aauth),
        body: Text("WELCOME"));
  }
}
