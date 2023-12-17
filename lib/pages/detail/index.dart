import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
// import 'package:project_mobile_flutter/pages/detail/widget_coment_input.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height / 3,
            child: FadeInUp(
                duration: Duration(milliseconds: 1200),
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          colors: [
                        Color.fromRGBO(251, 121, 155, 1),
                        Color.fromRGBO(251, 53, 105, 1)
                      ])),
                  child: Transform.translate(
                    offset: Offset(30, -30),
                    child: FadeInUp(
                        duration: Duration(milliseconds: 1300),
                        child: Image.asset(
                          'assets/e.png',
                        )),
                  ),
                )),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: MediaQuery.of(context).size.height / 1.4,
              child: FadeInUp(
                  duration: Duration(milliseconds: 1200),
                  child: Container(
                      padding: const EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: Text(
                              'Trifani Ayu',
                              style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, .54),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1300),
                            child: Text(
                              "Resep Mengobati Diabetes",
                              style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, 1),
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1400),
                            child: Text(
                              "* Bahan bahan \n 1. 1 sdt kayu manis \n 2. 1 sdt madu \n 3. air hangat",
                              style: TextStyle(
                                color: Color.fromRGBO(9, 8, 8, 0.949),
                                height: 1.4,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1400),
                            child: Text(
                              "* CARA PEMBUATAN \n 1. Seduh 1 sdt kayu manis \n 2. Masukan 1 sdt madu \n 3. Campurkan dengan air hangat \n 4. Minum 1x sehari",
                              style: TextStyle(
                                color: Color.fromRGBO(9, 8, 8, 0.949),
                                height: 1.4,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1400),
                            child: RatingBar.builder(
                              initialRating: 0.5,
                              itemCount: 5,
                              itemSize: 30.0,
                              itemBuilder: (context, index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              },
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ))))),
        ],
      ),
    );
  }
}

// class CommentList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: comments.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(comments[index]),
//         );
//       },
//     );
//   }
// }

// class CommentInput extends StatefulWidget {
//   @override
//   _CommentInputState createState() => _CommentInputState();
// }

// class _CommentInputState extends State<CommentInput> {
//   TextEditingController _commentController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: _commentController,
//               decoration: InputDecoration(
//                 hintText: 'Tambahkan Komentar...',
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.send),
//             onPressed: () {
//               String comment = _commentController.text;
//               if (comment.isNotEmpty) {
//                 addComment(comment);
//                 _commentController.clear();
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   void addComment(String comment) {
//     // Simpan logika untuk menyimpan komentar ke data atau server
//     setState(() {
//       comments.add(comment);
//     });
//   }
// }

// List<String> comments = [
//   'Ini adalah komentar pertama.',
//   'Komentar kedua terlihat bagus!',
// ];
