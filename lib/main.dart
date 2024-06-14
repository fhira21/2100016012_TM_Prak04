import 'package:flutter/material.dart';
import 'package:shrine/supplemental/cut_corners_border.dart';

import 'app.dart';
import 'home6.dart';
import 'register_screen.dart';
import 'login.dart';
import 'home.dart';
import 'colors.dart';

void main() => runApp( ShrineApp());

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prak 4, 5 dan 6',
      // Tambahkan rute navigasi untuk halaman registrasi
      initialRoute: '/login',
      routes: {
        '/register': (context) => RegisterScreen(), // Arahkan ke halaman registrasi
        '/home': (context) => HomePage(), // Misalnya, halaman home yang ada di dalam file app.dart
        '/login': (context) => LoginPage(),
        '/home6': (context) => HomePage2()
      },
      theme: _kShrineTheme,
    );
  }
}
final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrineBlue,
      secondary: kShrinePink,
      error: kShrineErrorRed,
      surface: kShrineBackgroundWhite,
      onPrimary:kShrinePink2
    ),
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrineGreen,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrineBackgroundWhite,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: kShrineBlack,
      ),
    ),
  );
}
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headlineSmall: base.headlineSmall!.copyWith(
      fontWeight: FontWeight.w500,
    ),
    titleLarge: base.titleLarge!.copyWith(
      fontSize: 18.0,
    ),
    bodySmall: base.bodySmall!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyLarge: base.bodyLarge!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: kShrineBlack,
    bodyColor: kShrineBlack,
  );
}