import 'package:aksi_hijau/auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FAFAFA'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(25, 9, 25, 0),
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
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(25, 70, 0, 0),
              child: Row(
                children: [
                  Image.asset('assets/images/logo-profile.png'),
                  SizedBox(width: 16), // Jarak antara gambar dan teks
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hana Yandri',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Text('@hanazolanda',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: HexColor('A1A1A1'))),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              width: 316,
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
            Container(
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Aksi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: HexColor('8CC600'),
                ),
              ),
            ),
            Container(
              width: 315,
              height: 132,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      // Column 1 - Gambar
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.5, 15.5, 12, 32),
                        child: Column(
                          children: [
                            Container(
                              width: 109,
                              height: 84,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child:
                                  Image.asset('assets/images/aksi-profile.png'),
                            ),
                          ],
                        ),
                      ),
                      // Column 2 - Teks 4 baris
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.5, 15.5, 12, 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bekasi',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: HexColor('A1A1A1'),
                              ),
                            ),
                            Text(
                              '12 November 2023',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: HexColor('000000'),
                              ),
                            ),
                            Text(
                              'Pembersihan Pantai',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: HexColor('000000'),
                              ),
                            ),
                            Text(
                              'Selesai',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: HexColor('8CC600'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Teks di sebelah kanan
                  Positioned(
                    bottom: 10,
                    right: 19.5,
                    child: Text(
                      'Limapandekar Community',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: HexColor('A1A1A1'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.only(bottom: 4),
              child: Text(
                'Dukungan',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: HexColor('8CC600'),
                ),
              ),
            ),
            Container(
              width: 294,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // Column 1 - Gambar
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 12, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 69.34,
                          height: 70,
                          decoration: BoxDecoration(),
                          // Anda dapat mengganti 'Image.asset' dengan cara lain untuk menampilkan gambar
                          child:
                              Image.asset('assets/images/dukungan-profile.png'),
                        ),
                      ],
                    ),
                  ),
                  // Column 2 - Teks 3 baris
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 12, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Selvyananda',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: HexColor('8CC600'),
                          ),
                        ),
                        Text(
                          'Pengen ikutan aksi\ndi bandung, tapi ngirim...',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Column 3 - Icon Love
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 294,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // Column 1 - Gambar
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 12, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 69.34,
                          height: 70,
                          decoration: BoxDecoration(),
                          // Anda dapat mengganti 'Image.asset' dengan cara lain untuk menampilkan gambar
                          child:
                              Image.asset('assets/images/dukungan-profile.png'),
                        ),
                      ],
                    ),
                  ),
                  // Column 2 - Teks 3 baris
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 12, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Selvyananda',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: HexColor('8CC600'),
                          ),
                        ),
                        Text(
                          'Pengen ikutan aksi\ndi bandung, tapi ngirim...',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Column 3 - Icon Love
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 294,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // Column 1 - Gambar
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 12, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 69.34,
                          height: 70,
                          decoration: BoxDecoration(),
                          // Anda dapat mengganti 'Image.asset' dengan cara lain untuk menampilkan gambar
                          child:
                              Image.asset('assets/images/dukungan-profile.png'),
                        ),
                      ],
                    ),
                  ),
                  // Column 2 - Teks 3 baris
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 12, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Selvyananda',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: HexColor('8CC600'),
                          ),
                        ),
                        Text(
                          'Pengen ikutan aksi\ndi bandung, tapi ngirim...',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Column 3 - Icon Love
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 294,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // Column 1 - Gambar
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 12, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 69.34,
                          height: 70,
                          decoration: BoxDecoration(),
                          // Anda dapat mengganti 'Image.asset' dengan cara lain untuk menampilkan gambar
                          child:
                              Image.asset('assets/images/dukungan-profile.png'),
                        ),
                      ],
                    ),
                  ),
                  // Column 2 - Teks 3 baris
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 12, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Selvyananda',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: HexColor('8CC600'),
                          ),
                        ),
                        Text(
                          'Pengen ikutan aksi\ndi bandung, tapi ngirim...',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Column 3 - Icon Love
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text(
                'show more',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor('8CC600'),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
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
                  Expanded(
                    child: Image.asset('assets/icons/Logout.png'),
                  ),      
                  SizedBox(width: 27),
                  GestureDetector(
                    onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: 
                (context) =>Login()
                ));
                    },
                    child: Container(
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
                  ),
                  SizedBox(width: 27),
                  // Kolom 2 (Anda dapat menambahkan widget sesuai kebutuhan)
                ],
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
