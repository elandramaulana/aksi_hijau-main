
import 'package:aksi_hijau/model/event.dart';
import 'package:aksi_hijau/model/event_data.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class JoinEvent extends StatefulWidget {
  final Event event;

  JoinEvent({required this.event});

  @override
  State<JoinEvent> createState() => _JoinEventState();
}

class _JoinEventState extends State<JoinEvent> {
  bool isButtonDisabled = false;
  int selectedButton = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Join Aksi')),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Weklin Community',
                style: TextStyle(
                  color: HexColor('8CC600'),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
               child: Image.asset(widget.event.imagePath,
                fit: BoxFit.cover,
               )
                   ),
                    SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text('23 orang terdaftar',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('${widget.event.judul}',
                          style: TextStyle(
                            color: HexColor('8CC600'),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('${widget.event.description}',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                        SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('${widget.event.date}',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                         SizedBox(height: 20,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Ketentuan',
                          style: TextStyle(
                            color: HexColor('8CC600'),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                      ),
                       SizedBox(height: 20,),
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(
                                '1. Usia minimum mengikuti kegiatan ini 18 tahun, jika berusia di bawah 18 tahun harus diawasi oleh orang tua dan/atau wali',
                                style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '2. Relawan diharapkan memakai pakaian yang rapi, sopan, memakai perlengkapan kebersihan yang aman dan nyaman dipakai untuk bekerja',
                                style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '3. Relawan tidak sedang mengidap penyakit berat ataupun ringan',
                                style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '4. Relawan diharapkan membawa perlengkapan kebersihan yang dibutuhkan, ataupun dapat berkoordinasi di kolon diskusi apabila tidak dapat membawanya (sarung tangan, kaca mata, plastik, sepatu karet/ pembungkus sepatu, penjepit, dll)',
                                style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),

                       Padding(
                              padding: const EdgeInsets.only(bottom :14.0, left: 14.0, right: 14.0),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
  onPressed: isButtonDisabled
      ? null
      : () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Konfirmasi'),
                content: Text('Apakah Anda yakin ingin bergabung?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Batal'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isButtonDisabled = true;
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('Join'),
                  ),
                ],
              );
            },
          );
        },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey; // Warna abu-abu saat tombol dinonaktifkan
      }
      return Colors.green; // Warna hijau saat tombol aktif
    }),
  ),
  child: Text(
    'Join',
    style: TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
)

      ),
            ),
         
        ],
          ),
        ),
     ),
     );
  }
}