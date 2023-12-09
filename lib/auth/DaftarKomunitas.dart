import 'package:aksi_hijau/auth/Login.dart';
import 'package:aksi_hijau/controller/komunitas/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 80.0, 0, 0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 18.0, 0, 0),
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      color: HexColor('8CC600'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: HexColor('00000d'),
                  //       offset: Offset(0, 3),
                  //       blurRadius: 6.0,
                  //       spreadRadius: 0.0
                  //     )
                  //   ]
                  // ),
                  padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Nama',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: HexColor('8CC600')),
                        filled: true,
                        fillColor: HexColor('E3F1C5'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(14)),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: HexColor('00000d'),
                  //       offset: Offset(0, 3),
                  //       blurRadius: 6.0,
                  //       spreadRadius: 0.0
                  //     )
                  //   ]
                  // ),
                  padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Nama Komunitas',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: HexColor('8CC600')),
                        filled: true,
                        fillColor: HexColor('E3F1C5'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(14)),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: HexColor('00000d'),
                  //       offset: Offset(0, 3),
                  //       blurRadius: 6.0,
                  //       spreadRadius: 0.0
                  //     )
                  //   ]
                  // ),
                  padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: HexColor('8CC600')),
                        filled: true,
                        fillColor: HexColor('E3F1C5'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(14)),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: HexColor('00000d'),
                  //       offset: Offset(0, 3),
                  //       blurRadius: 6.0,
                  //       spreadRadius: 0.0
                  //     )
                  //   ]
                  // ),
                  padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: HexColor('8CC600')),
                        filled: true,
                        fillColor: HexColor('E3F1C5'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(14)),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: HexColor('00000d'),
                  //       offset: Offset(0, 3),
                  //       blurRadius: 6.0,
                  //       spreadRadius: 0.0
                  //     )
                  //   ]
                  // ),
                  padding: EdgeInsets.fromLTRB(16, 6, 16, 6),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.add,
                          color: HexColor('8CC600'),
                          size: 32,
                        ),
                        labelText: 'Bukti Komunitas',
                        labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: HexColor('8CC600')),
                        filled: true,
                        fillColor: HexColor('E3F1C5'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.all(14)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 32.0, 0, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(100, 16, 100, 16)),
                        backgroundColor:
                            MaterialStateProperty.all(HexColor('8CC600')),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    child: Text(
                      "DAFTAR",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: HexColor('FFFFFF'),
                      ),
                    ),
                    onPressed: () {
                      // Menampilkan pemberitahuan pendaftaran berhasil
                      Fluttertoast.showToast(
                        msg: "Pendaftaran berhasil!",
                        backgroundColor: HexColor('8CC600'),
                      );

                      // Kemudian arahkan pengguna ke halaman login.
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ).animate().fadeIn(duration: 700.ms);
  }
}
