import 'package:flutter/material.dart';
import 'package:toilet/pages/auth/auth.dart';
import 'package:toilet/pages/auth/auth.login.dart';
import 'package:toilet/pages/auth/auth.register.dart';
import 'package:toilet/pages/auth/auth.register.nickname.dart';

final routes = {
  '/': (BuildContext context) => const AuthPage(),
  '/auth/register': (BuildContext context) => const AuthRegisterPage(),
  '/auth/register-nickname': (BuildContext context) =>
      const AuthRegisterNicknamePage(),
  '/auth/login': (BuildContext context) => const AuthLoginPage(),
};
