import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

const baseUrl = "https://jsonplaceholder.typicode.com";

class API {
  static Future getUsers() {
    var url = baseUrl + "/users";
    return http.get(Uri.parse(url));
  }
}
