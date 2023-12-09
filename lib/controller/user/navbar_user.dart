import 'package:aksi_hijau/controller/komunitas/ProfileComunity.dart';
import 'package:aksi_hijau/controller/user/ProfileUser.dart';
import 'package:aksi_hijau/controller/user/aspirasi.dart';
import 'package:aksi_hijau/controller/komunitas/home.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NavbarUser extends StatefulWidget {
  const NavbarUser({super.key});

  @override
  State<NavbarUser> createState() => _NavbarUserState();
}

class _NavbarUserState extends State<NavbarUser> {

  int tabIndex = 0;
  final List<Widget> _children = [
    const HomeView(),
    const AspirasiView(),
    const ProfileUser(),
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
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: HexColor('E3F1C5'),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
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
                    onNavItemTapped(1); // Pindah ke halaman 1 (Event)
                  },
                  child: Image.asset('assets/icons/event_active.png', width: 35,
                    color: tabIndex == 1 ? HexColor('8CC600') : HexColor('C6CAC5'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onNavItemTapped(2); // Pindah ke halaman 2 (Profile)
                  },
                  child: Image.asset('assets/icons/profile_active.png', width: 35,
                    color: tabIndex == 2 ? HexColor('8CC600') : HexColor('C6CAC5'),
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
