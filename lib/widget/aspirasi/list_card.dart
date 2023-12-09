import 'package:aksi_hijau/model/aspirasi_data.dart';
import 'package:flutter/cupertino.dart';

import 'card.dart';

class AspirasiListView extends StatelessWidget {
  const AspirasiListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: aspirasis.length,
      itemBuilder: (BuildContext context, int index){
        return Column(
          children: [
            AspirasiCard(aspirasi: aspirasis[index]),
          ],
        );
      },
    );
  }
}