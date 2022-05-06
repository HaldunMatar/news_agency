import 'dart:async';
import 'dart:convert';

//import 'package:flutter/widgets.dart';
//import 'package:http/http.dart' as http;

class Auth {
  late String _token;
  late DateTime _expiryDate;

  bool get isAuth {
    return _token != null;
  }
}
