// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// class ItemScreen extends StatelessWidget {
//   const ItemScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black45,
//           ),
//         ),
//         title: Text(
//           "Cheese Pizza",
//           style: TextStyle(
//             color: const Color.fromARGB(255, 85, 63, 63),
//             fontSize: 25,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 10),
//             child: Icon(
//               Icons.favorite,
//               color: Color(0xFFFF2F08),
//               size: 28,
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 10),
//             Text(
//               "Campuran Pizza dengan daging sapi, cabai, dan keju",
//               style: TextStyle(
//                 color: Colors.black45,
//                 fontSize: 17,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 8),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.star,
//                   color: Color(0xFFFF2F08),
//                   size: 22,
//                 ),
//                 SizedBox(width: 2),
//                 Text(
//                   "4.5",
//                   style: TextStyle(
//                     color: Colors.black45,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.all(25),
//               child: Image.asset("images/pizza.png"),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     Text(
//                       "Kalori",
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       "120",
//                       style: TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 30,
//                   width: 2,
//                   color: Colors.black38,
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       "Isi",
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       "12 inch",
//                       style: TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: 30,
//                   width: 2,
//                   color: Colors.black38,
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       "Jarak",
//                       style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.black45,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       "2,5 KM",
//                       style: TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 40),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       Text(
//                         "Order",
//                         style: TextStyle(
//                           fontSize: 17,
//                           color: Colors.black45,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.add_circle_outline_rounded,
//                             color: Colors.black45,
//                           ),
//                           SizedBox(width: 2),
//                           Text(
//                             "01",
//                             style: TextStyle(
//                               fontSize: 17,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Icon(
//                             CupertinoIcons.minus_circle,
//                             color: Colors.black45,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         "Delivery",
//                         style: TextStyle(
//                           fontSize: 17,
//                           color: Colors.black45,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         "Express",
//                         style: TextStyle(
//                           fontSize: 17,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.green,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         "Price",
//                         style: TextStyle(
//                           fontSize: 17,
//                           color: Colors.black45,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         "\45K",
//                         style: TextStyle(
//                           fontSize: 17,
//                           color: Color(0xFFFF2F08),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: InkWell(
//         onTap: () {},
//         child: Container(
//           height: 60,
//           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//           padding: EdgeInsets.symmetric(vertical: 20),
//           decoration: BoxDecoration(
//             color: Color(0xFFFF2F08),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Tambahkan ke Keranjang",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(width: 10),
//               Icon(
//                 Icons.add_circle_outline_rounded,
//                 color: Colors.white,
//                 size: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:project_uas/model/webtoon.dart';
import 'package:project_uas/model/fetch_data_webtoon.dart';

class ItemScreen extends StatefulWidget {
  final String nama;

  ItemScreen({Key? key, required this.nama}) : super(key: key);

  @override
  _ItemScreenState createState() => _ItemScreenState(nama: this.nama);
}

class _ItemScreenState extends State<ItemScreen> {
  final String nama;
  _ItemScreenState({required this.nama});
  late Webtoon place;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    Repository re =
        Repository(); // Ganti dengan cara inisialisasi Repository yang sesuai
    place = await re.fetchDataByName(this.nama);
    setState(
        () {}); // Memanggil setState untuk membangun ulang widget dengan data yang sudah diambil
  }

  @override
  Widget build(BuildContext context) {
    if (place == null) {
      // Menampilkan loading indicator atau pesan lain selama data masih diambil
      return Scaffold(
        appBar: AppBar(
          title: Text('Loading...'),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(place.nama),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Gambar Komik
            Container(
              width: double.infinity,
              height: 200,
              child: Image.network(
                place.gambar,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Judul Komik
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    place.nama,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    place.deskripsi,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "agat lelembut atau dunia para makhluk halus, ...",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            // Daftar Episode
            // Implementasi ListView.builder sesuai dengan kebutuhan
          ],
        ),
      ),
    );
  }
}


// class ItemScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detail'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             // Gambar Komik
//             Container(
//               width: double.infinity,
//               height: 200,
//               child: Image.asset('images/Weak Hero 2.jpg', fit: BoxFit.cover),
//             ),
//             SizedBox(height: 16),

//             // Judul Komik
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
              
//               child: Text(
//                 'Weak Hero',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Daftar Episode
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 5, // Ganti dengan jumlah episode yang sesuai
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.asset('images/${episode[index]}.jpg', width: 50,),
//                   title: Text('Episode $index'),
//                   subtitle: Text("01 September "), // Ganti dengan tanggal rilis yang sesuai
//                   onTap: () {
//                     // Tambahkan aksi ketika item episode diklik
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }