import 'package:aksi_hijau/model/event.dart';
import 'package:aksi_hijau/model/event_data.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {

  String judul = '';
  String lokasi = '';
  String tanggal = '';
  String ketentuan = '';

  final judulController = TextEditingController();
  final lokasiController = TextEditingController();
  final tanggalController = TextEditingController();
  final ketentuanController = TextEditingController();
  final iklanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Tambah Aksi',
        style: TextStyle(fontFamily: 'Inter'),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
               width: 400,
               height: 200,
               child: ElevatedButton.icon(
               onPressed: () {},
                 icon: Icon(Icons.camera_alt),
                 label: Text('Tambah Foto'),
                 style: ButtonStyle(
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10), // Atur radius ke 0 untuk menghilangkan border radius
                     ),
                   ),
                   ),
                     ),
                   ),
      
                SizedBox(height: 20,),
                TextField(
                  controller: judulController,
                  decoration: InputDecoration(
                    hintText: 'Judul Aksi',
                    prefixIcon: Icon(Icons.edit),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ), 
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: lokasiController,
                  decoration: InputDecoration(
                    hintText: 'Lokasi',
                    prefixIcon: Icon(Icons.location_on),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ), 
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: tanggalController,
                  decoration: InputDecoration(
                    hintText: 'Hari/tanggal',
                    prefixIcon: Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ), 
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: ketentuanController,
                  decoration: InputDecoration(
                    hintText: 'Ketentuan',
                    prefixIcon: Icon(Icons.check_box),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ), 
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 400,
                  height: 50,
                 child: ElevatedButton(
                  onPressed: () {
                      final newEvent = Event(
                          imagePath: 'assets/images/event.png',
                          location: lokasiController.text,
                          date: tanggalController.text,
                          description: ketentuanController.text,
                          judul: judulController.text, 
                          iklan: iklanController.text,
                        );

                        // Tambahkan event baru ke daftar event
                        events.add(newEvent);

                        // Kosongkan input fields
                        judulController.clear();
                        lokasiController.clear();
                        tanggalController.clear();
                        ketentuanController.clear();

                        // Perbarui tampilan
                        setState(() {
                          print(events);
                        });

                        // Navigasi kembali ke halaman sebelumnya
                        Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(HexColor('E3F1C5')), // Mengatur warna latar belakang
                  ),
                  child: Text(
                    'Publish',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))
            ],
          ),
        ),
      ),
    );
  }
}