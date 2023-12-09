import 'package:aksi_hijau/event/addevent.dart';
import 'package:aksi_hijau/model/event_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../event/detail_event.dart';
import '../../model/event.dart';

class EventView extends StatefulWidget {
  const EventView({super.key});

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('FAFAFA'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddEvent());
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: HexColor('8CC600'),
        ),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right:60.0),
            child: Center(
              child: Text(
                'Aksi',
                style: TextStyle(fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  EventCard(event: events[index]),
                ],
              );
            },
          ),
        ));
  }
}

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigasi ke halaman detail event
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EventDetail(event: event),
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
                  child: Text(event.location,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 131, 183, 27))),
                ),
                subtitle: Container(
                  margin: const EdgeInsets.only(left: 130),
                  child: Text(event.judul,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 17, 17, 17),
                          fontSize: 12)),
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
    );
  }
}
