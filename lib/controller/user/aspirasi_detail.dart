import 'package:flutter/material.dart';

import '../../model/aspirasi.dart';

class Comment {
  final String username;
  final String text;

  Comment(this.username, this.text);
}

class AspirasilDetailView extends StatelessWidget {
  final Aspirasi aspirasi;

  AspirasilDetailView({required this.aspirasi});

  @override
  Widget build(BuildContext context) {
    final comments = aspirasi.komentar;

    final commentWidgets = comments.map((commentz) {
      return CommentWidget(comment: Comment(commentz[0], commentz[1]));
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 0, top: 9),
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
      body: Scrollbar(
        child: Container(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.only(left: 0, top: 4, right: 0, bottom: 0),
                padding:
                    EdgeInsets.only(left: 26, top: 16, right: 26, bottom: 16),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 0, top: 0, right: 0, bottom: 8),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          aspirasi.user,
                          style: TextStyle(
                            color: Color(0xFF8CC600),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        aspirasi.description,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 0, top: 8, right: 0, bottom: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(aspirasi.imagePath),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 0, top: 10, right: 0, bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(
                                left: 5, top: 0, right: 0, bottom: 0),
                            child: Text('${aspirasi.jumlah_komentar} Komentar',
                                style: TextStyle(
                                    color: Color(
                                        0xFFA1A1A1))), // Warna teks komentar menjadi abu-abu (A1A1A1)
                          ),
                          Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  // Aksi ketika "love" diklik
                                },
                                child: Icon(Icons.favorite,
                                    color: Colors
                                        .red), // Warna ikon love menjadi merah saat diklik
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 5, top: 0, right: 10, bottom: 0),
                                child: Text('${aspirasi.jumlah_like} Dukungan',
                                    style: TextStyle(
                                        color: Color(
                                            0xFFA1A1A1))), // Warna teks komentar menjadi abu-abu (A1A1A1)
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Aksi ketika "share" diklik
                                },
                                child: Icon(Icons.share,
                                    color: Colors
                                        .green), // Warna ikon share menjadi hijau saat diklik
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 5, top: 0, right: 0, bottom: 0),
                child: Divider(),
              ),
              Container(
                height: 47,
                padding: const EdgeInsets.only(
                    left: 26, top: 14, right: 26, bottom: 14),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tambahkan komentarmu!',
                    prefixIcon: Icon(Icons.add_comment_outlined,
                        color: Color(0xFFA1A1A1)), // Ubah warna ikon
                    border: InputBorder.none,
                    labelStyle: TextStyle(
                        color: Color(0xFFA1A1A1)), // Ubah warna teks label
                  ),
                  style: TextStyle(
                      color: Color(0xFFA1A1A1)), // Ubah warna teks dalam input
                  maxLines: 4,
                  validator: (value) {
                    // Validasi jika diperlukan
                  },
                  onSaved: (value) {
                    // Penanganan komentar saat formulir disimpan
                    print('Komentar: $value');
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 5, top: 0, right: 0, bottom: 0),
                child: Divider(),
              ),
              Expanded(
                child: ListView(
                  children: commentWidgets,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final Comment comment;

  CommentWidget({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 26, top: 10, right: 26, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 0, top: 0, right: 0, bottom: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      comment.username,
                      style: TextStyle(
                        color: Color(0xFF8CC600),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    comment.text,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5, top: 0, right: 0, bottom: 0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
