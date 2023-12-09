import 'package:aksi_hijau/controller/komunitas/event.dart';
import 'package:aksi_hijau/event/detail_event.dart';
import 'package:aksi_hijau/event/join_event.dart';
import 'package:aksi_hijau/model/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../model/event_data.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Container(
          width: 32,
          height: 32,
          margin: const EdgeInsets.only(left: 14, top: 13),
          child: Image.asset('assets/images/logo.png'), 
        ), 
        title:Container(
          height: 32,
          margin: const EdgeInsets.only(left: 0, top: 13),
          child: Image.asset('assets/images/aksi_hijau.png'), 
        ),
        actions: [
            IconButton(
              icon: Container(
                  width: 36,
                  height: 36,
                  margin: const EdgeInsets.only(left: 0, top: 8),
                  child: Image.asset('assets/images/profile_app_bar.png'), 
                ), // Replace with your image path
              onPressed: () {
                // Add any action you want to perform when the profile icon is clicked.
              },
            ),
          ],
      ),

      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Memastikan agar child memenuhi lebar layar
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Mulai ',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: 'AKSIMU',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: HexColor('8CC600')
                        ),
                      ),
                      TextSpan(
                        text: ' \nSekarang!',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
           Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Mengatur scroll ke samping
                itemCount: events.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomEventCard(event: events[index]);
                },
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Aksi',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: HexColor('8CC600')
                    ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        CustomList(event: events[index]),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
    );  
  }
}


class CustomEventCard extends StatelessWidget {
  final Event event;

  CustomEventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigasi ke halaman detail event
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => JoinEvent(event: event),
        ));
      },
      child: Stack(
  children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: HexColor('E3F1C5'),
              child: SizedBox(
                height: 250.0,
                width: 330,
              ),
            ),
            Container(
              child: Positioned(
                left: 10,
                top: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    event.imagePath,
                    width: 320,
                    height: 200,
                    repeat: ImageRepeat.noRepeat,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              child: Positioned(
                left: 30,
                top: 15, // Mengatur posisi teks di atas gambar
                child: Text(
                  event.location,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white, // Mengatur warna teks
                  ),
                ),
              ),
            ),
            Container(
              child: Positioned(
                left: 30,
                top: 50, // Mengatur posisi teks di atas gambar
                child: Text(
                  event.date,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255), // Mengatur warna teks
                  ),
                ),
              ),
            ),
            Container(
              child: Positioned(
                left: 270,
                top: 15, // Mengatur posisi teks di atas gambar
                child: Text(
                  event.iklan,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                    color: Colors.white, 
                  ),
                ),
              ),
            ),
            Container(
              child: Positioned(
                left: 100,
                top: 160, // Mengatur posisi teks di atas gambar
                child: Align(
                  child: Text(
                    event.judul,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white, 
                    ),
                  ),
                ),
              ),
            ),
  ],
)
    ).animate().fadeIn(
      duration: 700.ms
    );
  }
}


class CustomList extends StatelessWidget {
  final Event event;

  CustomList({required this.event});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigasi ke halaman detail event
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => JoinEvent(event: event),
        ));
      },
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: HexColor('E3F1C5'),
            child: SizedBox(
              height: 115.0,
              child: ListTile(
                title: Container(
                  margin: const EdgeInsets.only(left: 130),
                  child: Text(
                    event.location,
                    style: const TextStyle(color: Color.fromARGB(255, 131, 183, 27))
                  ),
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left: 130),
                  child: Text(event.judul,
                      style: const TextStyle(color: Color.fromARGB(255, 17, 17, 17), fontSize: 12)),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 11, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                event.imagePath,
                width: 120,
                height: 100,
                repeat: ImageRepeat.noRepeat,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(145, 70, 0, 0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.4),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.calendar_today,
                size: 20,
              ),
              label: Text(event.date, style: const TextStyle(fontSize: 9)),
            ),
          ),
        ],
      ),
    ).animate().fadeIn(
      duration: 700.ms
    );
  }
}

