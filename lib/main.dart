import 'package:codelab1/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      //Menambahkan widget Detail Screen sebagai home
      //home: DetailScreen(),
      //Fungsi halaman utama aplikasi
      home: MainScreen(),
    );
  }
}
