import 'package:flutter/material.dart';
import 'package:toilet/pages/auth/auth.dart';
import 'package:toilet/pages/auth/auth.register.dart';

final routes = {
  '/': (BuildContext context) => const AuthPage(),
  '/auth/register': (BuildContext context) => const AuthRegisterPage(),
};