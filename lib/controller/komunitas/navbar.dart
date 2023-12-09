import 'package:aksi_hijau/controller/komunitas/ProfileComunity.dart';
import 'package:aksi_hijau/controller/komunitas/event.dart';
import 'package:aksi_hijau/controller/komunitas/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';

import '../user/aspirasi.dart';


class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  int tabIndex = 0;
  final List<Widget> _children = [
    HomeView(),
    AspirasiView(),
    EventView(),
    ProfileComunity(),
  ];

    void onNavItemTapped(int index) {
    setState(() {
      tabIndex = index; // Mengubah indeks halaman saat item ditekan
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[tabIndex], // Tampilkan halaman sesuai dengan indeks saat ini
      bottomNavigationBar: SafeArea(
        child: Padding(
         padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: HexColor('E3F1C5'),
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    onNavItemTapped(0); // Pindah ke halaman 0 (Home)
                  },
                    child: Image.asset('assets/icons/home_active.png', width: 35,
                    color: tabIndex == 0 ? HexColor('8CC600') : HexColor('C6CAC5'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onNavItemTapped(1); // Pindah ke halaman 2 (Profile)
                  },
                  child: Icon(
                    Icons.control_point_sharp,
                    color: tabIndex == 1 ? HexColor('8CC600') : HexColor('C6CAC5'),
                    size: 36,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onNavItemTapped(2); // Pindah ke halaman 1 (Event)
                  },
                   child: Image.asset('assets/icons/event_active.png', width: 35,
                    color: tabIndex == 2 ? HexColor('8CC600') : HexColor('C6CAC5'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onNavItemTapped(3); // Pindah ke halaman 2 (Profile)
                  },
                  child: Image.asset('assets/icons/profile_active.png', width: 35,
                    color: tabIndex == 3 ? HexColor('8CC600') : HexColor('C6CAC5'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
