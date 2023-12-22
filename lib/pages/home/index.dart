import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animate_do/animate_do.dart';
import 'package:project_mobile_flutter/connection/service/item_service.dart';
import 'package:project_mobile_flutter/main.dart';
import 'package:project_mobile_flutter/model/item_model.dart';
import 'package:project_mobile_flutter/pages/detail/index.dart';

void name(params) {}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeInUp(
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, right: 25, top: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        colors: [
                          Color.fromRGBO(255, 250, 182, 1),
                          Color.fromRGBO(255, 239, 78, 1)
                        ]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: FadeInUp(
                              duration: Duration(milliseconds: 1200),
                              child: Text(
                                  'Selamat Datang, ' +
                                      (currentUser?.username ?? ''),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(97, 90, 90, 1))),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: FadeInUp(
                                duration: Duration(milliseconds: 1300),
                                child: Image.asset('assets/c.png')),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: Text('Rekomendasi Hari Ini',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(97, 90, 90, 1))),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInUp(
                    duration: Duration(milliseconds: 1300),
                    child: makeCard(
                        context: context,
                        startColor: Color.fromRGBO(160, 117, 54, 1),
                        endColor: Color.fromRGBO(157, 78, 14, 1),
                        image: 'item.total',
                        title: 'item.data'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCard({context, startColor, endColor, image, title}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(type: PageTransitionType.fade, child: Detail()),
        );
      },
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [startColor, endColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                offset: Offset(5, 10),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(20), // Adjusted padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(image),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
