import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_uas/model/fetch_data_webtoon.dart';
import 'package:project_uas/detail.dart';
//import 'package:project_uas/episodeWH.dart';
import 'package:project_uas/model/webtoon.dart';

class itemComedy extends StatelessWidget {
  const itemComedy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Repository repo = Repository();
    return Scaffold(
      appBar: AppBar(
        title: Text("Kategori"),
        backgroundColor: Color.fromARGB(255, 190, 43, 14),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: repo.fetchDataPlaces(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            // Filter the data to show only items with ID 4
            List<dynamic> filteredData =
                snapshot.data.where((item) => item.id == 31).toList();

            if (filteredData.isEmpty) {
              return Center(child: Text("No data with ID 4 found"));
            }

            if (filteredData.length == 1) {
              // If there is only one item with ID 4, navigate directly to the detail screen
              return Detail(
                place: filteredData.first,
              );
            }

            return ListView.builder(
              shrinkWrap: true,
              itemCount: filteredData.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Detail(
                        place: filteredData[index],
                      );
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                              width: 255,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    filteredData[index].nama,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.white,
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
    );
  }
}