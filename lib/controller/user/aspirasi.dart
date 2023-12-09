import 'dart:io';

import 'package:aksi_hijau/controller/user/form.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../widget/aspirasi/list_card.dart';

class AspirasiView extends StatefulWidget {
  const AspirasiView({super.key});

  @override
  State<AspirasiView> createState() => _EventViewState();
}

class _EventViewState extends State<AspirasiView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('FAFAFA'),
        title: Container(
          margin: const EdgeInsets.only(left: 0, top: 9, bottom: 0, right: 0),
          child: const Text(
            'Aspirasi',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
              fontSize: 16,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: AspirasiListView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF8CC600),
        onPressed: () {
          // Tambahkan aksi yang ingin dijalankan saat tombol di klik
          Navigator.push(
              context, MaterialPageRoute(builder: (cotext) => FormView()));
        },
        child: Icon(Icons.add, color: Colors.white),
        shape: CircleBorder(), // Mengatur bentuk FAB menjadi bulat sempurna
      ),
    );
  }
}
