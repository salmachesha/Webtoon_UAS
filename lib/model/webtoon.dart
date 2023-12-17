import 'dart:convert';

Webtoon webtoonFromJson(String str) => Webtoon.fromJson(json.decode(str));

String webtoonToJson(Webtoon data) => json.encode(data.toJson());

class Webtoon {
    String deskripsi;
    String nama;
    String gambar;
    int id;

    Webtoon({
        required this.deskripsi,
        required this.nama,
        required this.gambar,
        required this.id,
    });

    factory Webtoon.fromJson(Map<String, dynamic> json) => Webtoon(
        deskripsi: json["Deskripsi"],
        nama: json["Nama"],
        gambar: json["gambar"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "Deskripsi": deskripsi,
        "Nama": nama,
        "gambar": gambar,
        "id": id,
    };
}