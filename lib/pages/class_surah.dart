import 'package:panduansholat2/theme.dart';

class DetailSurat {
  String? judul_surah;
  String? judul_surah_id;
  int? jumlah_ayat;
  String? arab;
  String? latin;
  String? indo;

  DetailSurat(this.judul_surah, this.judul_surah_id, this.jumlah_ayat,
      this.arab, this.latin, this.indo);
}

List<DetailSurat> detail_surat = [
  DetailSurat('An-Naba', 'Malaikat yang mencabut', 46, 'Arab', 'latin', 'indo')
];
