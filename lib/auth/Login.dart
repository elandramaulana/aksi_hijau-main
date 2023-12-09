import 'package:aksi_hijau/auth/RoleSelect.dart';
import 'package:aksi_hijau/controller/komunitas/navbar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../controller/user/navbar_user.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = '';
  String password = '';

final cm1 = 'pandawara@gmail.com';
  final cm2 = 'user_coba@gmail.com';
  final cm3 = 'yolandaaa@gmail.com';

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(height: 103),
            Container(
              child: Image.asset(
                'assets/images/logo.png',
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(height: 18),
            Container(
              child: Text(
                'Masuk',
                style: TextStyle(
                    color: HexColor('8CC600'),
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 63),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: TextField(
                controller: usernameController,
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
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: TextField(
                controller: passwordController,
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
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
            ),
            SizedBox(height: 1),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: 24),
                child: TextButton(
                  child: Text('Belum Punya Akun? Daftar')
                      .animate()
                      .fadeIn(duration: 700.ms),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => RoleSelect())));
                  },
                ),
              ),
            ),
            SizedBox(height: 28),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(100, 15, 100, 15)),
                    backgroundColor:
                        MaterialStateProperty.all(HexColor('8CC600')),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: Text(
                  "MASUK",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: HexColor('FFFFFF'),
                  ),
                ),
                onPressed: () {
                  if (usernameController.text == cm1){
                      Navigator.push(context, MaterialPageRoute(builder: (cotext)=> Navbar()));
                    } else if(usernameController.text == cm2){
                      Navigator.push(context, MaterialPageRoute(builder: (cotext)=> Navbar()));
                    } else if(usernameController.text == cm3){
                      Navigator.push(context, MaterialPageRoute(builder: (cotext)=> Navbar()));
                    } else {
                      Navigator.push(context, MaterialPageRoute(builder: (cotext)=> NavbarUser()));
                    }
                },
              ),
            ),
            SizedBox(height: 10),
            
          ],
        )),
      ),
    ).animate().fadeIn(
      duration: 700.ms
    );
  }
}
