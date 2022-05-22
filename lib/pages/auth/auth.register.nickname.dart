import 'package:flutter/material.dart';

class AuthRegisterNicknamePage extends StatelessWidget {
  const AuthRegisterNicknamePage({Key? key}) : super(key: key);

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
            const Text('프로필 정보',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Stack(
                children: [
                  Image.asset('assets/images/Profile-Image.png'),
                  Positioned(
                      top: 45,
                      left: 45,
                      child: Image.asset('assets/images/Open-Photo.png'))
                ],
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                labelText: '닉네임',
                filled: true,
                fillColor: Color(0xFFF3F3F3),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthRegisterNicknamePage()),
                  );
                },
                child: const Text('회원가입',
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
