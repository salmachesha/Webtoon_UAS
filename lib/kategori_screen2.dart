import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_uas/model/fetch_data_webtoon.dart';
import 'package:project_uas/detail.dart';
//import 'package:project_uas/episodeWH.dart';
import 'package:project_uas/model/webtoon.dart';

class KategoriScreenRomance extends StatelessWidget {
  const KategoriScreenRomance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategori"),
        backgroundColor: Color.fromARGB(255, 190, 43, 14),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "images/Background.jpg"), // Change the path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          FutureBuilder<List<dynamic>>(
            future: repo.fetchDataPlaces(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                // Filter the data to show only items with IDs 1, 2, and 3
               List<dynamic> filteredData = snapshot.data.where((item) => item.id >= 11 && item.id <= 20).toList();

                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: filteredData.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    // return ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Color.fromRGBO(236, 238, 229, 1),
                    //     shadowColor: Colors.transparent,
                    //   ),
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Detail(
                            place: filteredData[index],
                          );
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 4, 2, 6),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                child: Image.network(
                                  filteredData[index].gambar,
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 200,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        filteredData[index].nama,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w900,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}