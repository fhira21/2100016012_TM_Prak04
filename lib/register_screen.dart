import 'package:flutter/material.dart';
import 'register__form.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/diamond.png'), // Gunakan Image.asset() untuk menampilkan logo dari assets
        title: Text('Shrine'),
        backgroundColor: Color.fromARGB(255, 38, 172, 235), 
      ),
      body: RegisterForm(),
    );
  }
}
