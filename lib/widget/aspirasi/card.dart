
import 'package:aksi_hijau/controller/user/aspirasi_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/aspirasi.dart';

class AspirasiCard extends StatelessWidget {
  final Aspirasi aspirasi;

  AspirasiCard({required this.aspirasi});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: GestureDetector(
          onTap: () {
            // Navigasi ke halaman detail event
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AspirasilDetailView(aspirasi: aspirasi),
            ));
          },
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 109,
                    height: 110,
                    margin: const EdgeInsets.only(left: 12, top: 12, right: 0, bottom: 0),
                    child: Image.asset(aspirasi.imagePath),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        aspirasi.user,
                        style: TextStyle(
                          color: Color(0xFF8CC600), // Warna judul menjadi hijau (8CC600)
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                          fontSize: 12,
                        ),
                      ),
                      subtitle: Text(
                        aspirasi.description,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 10,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 12, top: 0, right: 0, bottom: 0), // Atur margin kiri di sini
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Container(
                    margin: const EdgeInsets.only(left: 5, top: 0, right: 0, bottom: 0),
                    child: Text('13 Komentar', style: TextStyle(color: Color(0xFFA1A1A1))), // Warna teks komentar menjadi abu-abu (A1A1A1)
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika "love" diklik
                        },
                        child: Icon(Icons.favorite, color: Colors.red), // Warna ikon love menjadi merah saat diklik
                      ),
                      GestureDetector(
                        onTap: () {
                          // Aksi ketika "share" diklik
                        },
                        child: Icon(Icons.share, color: Colors.green), // Warna ikon share menjadi hijau saat diklik
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}