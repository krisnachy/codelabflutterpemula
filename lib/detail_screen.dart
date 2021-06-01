import 'package:flutter/material.dart';

//Menambahkan variabel untuk penggunaan textstyle yang banyak
var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

//Kode berdasarkan susunan widget
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Menyusun list secara vertikal sehingga menggunakan widget column
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //lebar column match parent
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Gambar
              Image.asset('images/farm-house.jpg'),
              //Judul
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              //Informasi dan Tempat Wisata
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Kolom untuk menyusun icon dan text
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text(
                          'Open Everyday',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text(
                          '09.00 - 20.00',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'RP 25.000',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Menampilkan Deskripsi
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      //ClipRRect agar gambar rounded tidak lancip
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
