class Aspirasi {
  final String user;
  final String imagePath;
  final int jumlah_komentar;
  final int jumlah_like;
  final String description;
  final List<List<String>> komentar;

  Aspirasi({
    required this.user,
    required this.imagePath,
    required this.jumlah_komentar,
    required this.jumlah_like,
    required this.description,
    required this.komentar,
  });
}
