import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../model/event.dart';

class EventDetail extends StatefulWidget {
  final Event event;
  

  EventDetail({required this.event});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  int selectedButton = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Aksi')),
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
                    controller: TextEditingController(text:'${widget.event.judul}' ),
                    decoration: InputDecoration(
                    hintText: 'Judul',
                    prefixIcon: Icon(Icons.edit),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ), 
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                    controller: TextEditingController(text:'${widget.event.location}'),
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
                    controller: TextEditingController(text:'${widget.event.date}',),
                    decoration: InputDecoration(
                    hintText: 'Tanggal',
                    prefixIcon: Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ), 
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: TextEditingController(text:'${widget.event.description}' ),
                  decoration: InputDecoration(
                    hintText: 'Ketentuan ',
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
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Iklankan Aksimu!',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Untuk mendapat audience yang lebih luas, kami akan meletakkan aksimu di halaman depan!',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedButton = 1;
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Center(child: Text('1 Hari (Rp. 8.000)')),
                                ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 2;
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Text('3 Hari (Rp. 20.000)'),
                                ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 3;
                                  });
                                },
                                 style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Text('1 week (Rp. 30.000)'),
                                ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 4;
                                  });
                                },
                                 style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Text('Rp.100.000'),
                                ),
                            ],
                          ),
                    
                          const SizedBox(height: 20,),
                    
                          const Align(
                            child: Text('Metode Pembayaran'),),

                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: TextField(
                              decoration: InputDecoration(
                              fillColor: HexColor('E3F1C5'),
                              hintText: 'Transfer Bank - BNI',
                              prefixIcon: Image.asset('assets/images/bni.png'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ), 
                            ),
                                                  ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Aksi yang dijalankan saat tombol ditekan
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(HexColor('E3F1C5')), // Mengatur warna latar belakang
                                  ),
                                  child: Text(
                                    'Lanjutkan Pembayaran',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                           ),
                      ),
                          SizedBox(height: 4.0),
                            Padding(
                              padding: const EdgeInsets.only(bottom :14.0, left: 14.0, right: 14.0),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(HexColor('E3F1C5')), // Mengatur warna latar belakang
                                  ),
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                           ),
                      ),
                      ],
                      ),
                    );
                  },
                );
              },
            );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(HexColor('E3F1C5')),
                  ),
                  child: Text(
                    'Iklankan',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
      SizedBox(width: 16), // Jarak antara tombol "Publish" dan tombol "Iklankan"
      Expanded(
          child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Ingin Berdonasi?',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Bantu aplikasi berkembang dengan berdonasi untuk kemudahan komunitas',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedButton = 1;
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Text('Rp. 10.000'),
                                ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 2;
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Text('Rp. 20.000'),
                                ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 3;
                                  });
                                },
                                 style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Text('Rp. 50.000'),
                                ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 4;
                                  });
                                },
                                 style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return HexColor('E3F1C5');
                                        }
                                        return const Color.fromARGB(255, 255, 255, 255);
                                      },
                                    ),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(150, 40)), // Sesuaikan ukuran yang diinginkan
                                  ),
                                  child: Text('Rp.100.000'),
                                ),
                            ],
                          ),
                    
                          const SizedBox(height: 20,),
                    
                          const Align(
                            child: Text('Metode Pembayaran'),),

                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: TextField(
                              decoration: InputDecoration(
                              fillColor: HexColor('E3F1C5'),
                              hintText: 'Transfer Bank - BNI',
                              prefixIcon: Image.asset('assets/images/bni.png'),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ), 
                            ),
                                                  ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Aksi yang dijalankan saat tombol ditekan
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(HexColor('E3F1C5')), // Mengatur warna latar belakang
                                  ),
                                  child: Text(
                                    'Lanjutkan Pembayaran',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                           ),
                      ),
                          SizedBox(height: 4.0),
                            Padding(
                              padding: const EdgeInsets.only(bottom :14.0, left: 14.0, right: 14.0),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(HexColor('E3F1C5')), // Mengatur warna latar belakang
                                  ),
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                           ),
                      ),
                      ],
                      ),
                    );
                  },
                );
              },
            );
          },
           style: ElevatedButton.styleFrom(
                  primary: HexColor('E3F1C5'),
                ),
                child: Text(
                  'Selesai',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
                ),
                
              ],
            ),
          ),
           Padding(
                              padding: const EdgeInsets.only(bottom :14.0, left: 14.0, right: 14.0),
                              child: Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(HexColor('E3F1C5')), // Mengatur warna latar belakang
                                  ),
                                  child: Text(
                                    'Simpan Perubahan',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                           ),
                      ),
        ],
          ),
        ),
     ),
     );
    }
  }