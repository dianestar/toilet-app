import 'package:flutter/material.dart';

class AuthRegisterPage extends StatelessWidget {
  const AuthRegisterPage({Key? key}) : super(key: key);

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
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                labelText: '이메일',
                filled: true,
                fillColor: Color(0xFFF3F3F3),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  labelText: '비밀번호',
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  suffixIcon: Icon(Icons.visibility)),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  labelText: '비밀번호 확인',
                  filled: true,
                  fillColor: Color(0xFFF3F3F3),
                  suffixIcon: Icon(Icons.visibility)),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthRegisterPage()),
                  );
                },
                child: const Text('다음',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16)),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
