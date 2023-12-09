import 'package:aksi_hijau/auth/Login.dart';
import 'package:aksi_hijau/auth/RoleSelect.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileComunity extends StatefulWidget {
  const ProfileComunity({Key? key}) : super(key: key);

  @override
  _ProfileComunityState createState() => _ProfileComunityState();
}

class _ProfileComunityState extends State<ProfileComunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: HexColor('8CC600'),
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.settings,
                  color: HexColor('8CC600'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 29),
            child: Image.asset('assets/images/circle-profile.png'),
          ),
          SizedBox(height: 16),
          Container(
            child: Text(
              'Weklin Community',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 2),
          Container(
            child: Text(
              'Terverifikasi',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: HexColor('8CC600')),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(40, 8, 40, 8)),
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('E3F1C5')),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)))),
              child: Text(
                "Edit Profil Komunitas",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: HexColor('A1A1A1'),
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.only(top: 16),
            width: 234,
            height: 82,
            decoration: BoxDecoration(
              color: HexColor('FFFFFF'),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Mengatur jarak antara elemen
                  children: [
                    Column(
                      children: [
                        Text(
                          '8',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Aksi',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '47',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Aspirasi',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 321,
              height: 63,
              decoration: BoxDecoration(
                color: HexColor('FFFFFF'), // Warna latar belakang
                borderRadius: BorderRadius.circular(
                    20), // Mengatur sudut dengan BorderRadius.circular
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(202, 202, 202, 0.13),
                    offset: Offset(0, 2),
                    blurRadius: 150,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 22),
                  Icon(
                    Icons.settings,
                    size: 24,
                    color: HexColor('8CC600'),
                  ),
                  SizedBox(width: 27),
                  Container(
                    width: 221, // Lebar kolom 1
                    height: 82, // Tinggi kolom 1
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Pengaturan Aksi',
                      style: TextStyle(
                          color: HexColor('000'),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(width: 27),
                  // Kolom 2 (Anda dapat menambahkan widget sesuai kebutuhan)
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: 
                (context) =>Login()
                ));
            },
            child: Container(
              width: 321,
              height: 63,
              decoration: BoxDecoration(
                color: HexColor('FFFFFF'), // Warna latar belakang
                borderRadius: BorderRadius.circular(
                    20), // Mengatur sudut dengan BorderRadius.circular
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(202, 202, 202, 0.13),
                    offset: Offset(0, 2),
                    blurRadius: 150,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 22),
                  Expanded(child: Image.asset('assets/icons/Logout.png')),
                  SizedBox(width: 27),
                  Container(
                    width: 221, // Lebar kolom 1
                    height: 82, // Tinggi kolom 1
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Keluar',
                      style: TextStyle(
                          color: HexColor('000'),
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(width: 27),
                  // Kolom 2 (Anda dapat menambahkan widget sesuai kebutuhan)
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
