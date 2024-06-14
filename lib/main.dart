// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'app.dart';
import 'register_screen.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp( ShrineApp());

class ShrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prak 4&5',
      // Tambahkan rute navigasi untuk halaman registrasi
      initialRoute: '/register',
      routes: {
        '/register': (context) => RegisterScreen(), // Arahkan ke halaman registrasi
        '/home': (context) => HomePage(), // Misalnya, halaman home yang ada di dalam file app.dart
        '/login': (context) => LoginPage(),
      },
    );
  }
}