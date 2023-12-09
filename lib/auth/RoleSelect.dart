import 'package:aksi_hijau/auth/DaftarKomunitas.dart';
import 'package:aksi_hijau/auth/DaftarPribadi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: HexColor('F3F1E7')),
        useMaterial3: true,
      ),
      home: const RoleSelect(), // Panggil RoleSelect di sini
    );
  }
}

class RoleSelect extends StatelessWidget {
  const RoleSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 172.0, 0, 0),
            child: Image.asset(
              'assets/images/logo.png',
              width: 84,
              height: 84,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 80.0, 0, 0),
            child: Text(
              'Daftar Sebagai',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: HexColor('8CC600'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 50.0, 0, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(32, 12, 32, 12)),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('8CC600')),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
              child: Text(
                "Komunitas",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: HexColor('FFFFFF'),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: 
                (context) => Daftar()
                ));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(30, 12, 30, 12)),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('8CC600')),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
              child: Text(
                "Pribadi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: HexColor('FFFFFF'),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: 
                (context) => DaftarPribadi()
                ));
              },
            ),
          )
        ],
      ),
    )
    ).animate().fadeIn(
      duration: 700.ms
    );
  }
}
