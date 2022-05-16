import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 343,
              height: 280,
              child: Image.asset('assets/images/mockImage.jpeg'),
            ),
            const SizedBox(
              height: 167,
            ),
            SizedBox(
              width: 343,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  debugPrint('xx');
                },
                child: const Text('카카오톡으로 시작하기', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 343,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  debugPrint('xx');
                },
                child: const Text('이메일로 시작하기', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  child: const Text('이미 계정이 있으세요?', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 4),
                    child: const Text('로그인', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline))
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}