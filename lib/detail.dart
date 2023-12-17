import 'package:flutter/material.dart';
import 'package:project_uas/model/fetch_data_webtoon.dart';
import 'package:project_uas/model/webtoon.dart';

class Detail extends StatelessWidget {
  final Webtoon place;

  const Detail({Key? key, required this.place});

  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "images/Background.jpg"), // URL gambar dari objek Hewan
          fit: BoxFit.cover,
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 460,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                place.gambar,
                fit: BoxFit.cover,
              ),
            ),
            iconTheme: IconThemeData(color: Colors.black),
            automaticallyImplyLeading:
                false, // Add this line to hide the back arrow
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 12, 42, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    place.nama,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    place.deskripsi,
                    textAlign:
                        TextAlign.justify, // Mengubah textAlign menjadi justify
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}