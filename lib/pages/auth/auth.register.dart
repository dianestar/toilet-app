import 'package:flutter/material.dart';
import 'package:toilet/pages/auth/auth.register.nickname.dart';

class AuthRegisterPage extends StatefulWidget {
  const AuthRegisterPage({Key? key}) : super(key: key);

  @override
  _AuthRegisterPage createState() {
    return _AuthRegisterPage();
  }
}

class _AuthRegisterPage extends State<AuthRegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 28, 16, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('계정 정보',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '로그인시 사용할 이메일과 비밀번호를 입력하세요.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    onSaved: (String? value) {
                      setState(() {
                        _email = value as String;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'eee';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(_email)));
                      },
                      child: const Text('다음'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
