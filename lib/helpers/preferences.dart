import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = '';
  static String _lastName = '';
  static String _email = '';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name => _prefs.getString('name') ?? _name;

  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }

  static String get lastName => _prefs.getString('lastName') ?? _lastName;
  static set lastName(String lastName) {
    _lastName = lastName;
    _prefs.setString('lastName', lastName);
  }

  static String get email => _prefs.getString('email') ?? _email;
  static set email(String email) {
    _email = email;
    _prefs.setString('email', email);
  }

  static removeData() async {
    await _prefs.remove('name');
    await _prefs.remove('lastName');
    await _prefs.remove('email');
  }
}
