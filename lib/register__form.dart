import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo di bagian tengah halaman dengan jarak 100 dari AppBar
          SizedBox(
            height: 100.0,
            width: 100.0,
            child: Image.asset(
              'assets/3.0x/diamond.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 8.0), // Jarak antara logo dan judul
          // Judul "Registrasi"
          Text(
            'Registrasi',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0), // Jarak antara judul dan sub judul
          // Sub judul
          Text(
            'Fhira Triana Maulani - 2100016012',
            style: TextStyle(
              fontSize: 14.0,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(height: 12.0), // Jarak antara sub judul dan kolom input
          // Kolom input untuk username
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Masukkan Nama User',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          // Kolom input untuk password
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Masukkan Password',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          // Kolom input untuk retype password
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ulangi Password',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: _retypePasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Ulangi Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.0),
          // Tombol "Cancel" dan "Register" dalam satu baris
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    _retypePasswordController.clear();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[300]), // Warna latar belakang
                    foregroundColor: MaterialStateProperty.all(Colors.black), // Warna teks
                  ),
                  child: Text('Cancel'),
                ),
              ),
              SizedBox(width: 12.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman Home ketika tombol "Register" ditekan
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue), // Warna latar belakang
                    foregroundColor: MaterialStateProperty.all(Colors.white), // Warna teks
                  ),
                  child: Text('Register'),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          // Tombol "Sign Up" dengan judul "Sudah punya akun?" di bagian paling bawah
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sudah punya akun?',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(width: 8.0), // Jarak antara judul dan tombol "Sign Up"
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman login ketika tombol "Sign Up" ditekan
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
