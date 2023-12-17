import 'package:animate_do/animate_do.dart';
import 'package:project_mobile_flutter/pages/detail/index.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
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
                      // FadeInUp(
                      //     duration: Duration(milliseconds: 1000),
                      //     child: Image.asset(
                      //       'assets/menu.png',
                      //       width: 20,
                      //     )),
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
                              child: Text('Rerimpang',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(97, 90, 90, 1))),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: FadeInUp(
                                duration: Duration(milliseconds: 1300),
                                child: Image.asset('assgets/c.png')),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            // Transform.translate(
            //   offset: Offset(0, -20),
            //   child: FadeInUp(
            //       duration: Duration(milliseconds: 1200),
            //       child: Container(
            //         height: 40,
            //         padding: EdgeInsets.only(left: 20, top: 8),
            //         margin: EdgeInsets.symmetric(horizontal: 25),
            //         decoration: BoxDecoration(
            //             boxShadow: [
            //               BoxShadow(
            //                   color: Colors.grey.shade300,
            //                   blurRadius: 20.0,
            //                   offset: Offset(0, 10.0))
            //             ],
            //             borderRadius: BorderRadius.circular(5.0),
            //             color: Colors.white),
            //         child: TextField(
            //           decoration: InputDecoration(
            //               suffixIcon: Icon(
            //                 Icons.search,
            //                 color: Colors.black,
            //                 size: 20.0,
            //               ),
            //               border: InputBorder.none,
            //               hintText: 'Search'),
            //         ),
            //       )),
            // ),
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
                      // Container(
                      //   child: Row(
                      //     children: <Widget>[
                      //       FadeInUp(
                      //           duration: Duration(milliseconds: 1200),
                      //           child: MaterialButton(
                      //             elevation: 0,
                      //             highlightElevation: 0,
                      //             shape: RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.circular(5)),
                      //             padding: EdgeInsets.all(10),
                      //             onPressed: () {},
                      //             color: Color.fromRGBO(251, 53, 105, 0.1),
                      //             child: Text('Add',
                      //                 style: TextStyle(
                      //                     color:
                      //                         Color.fromRGBO(251, 53, 105, 1),
                      //                     fontSize: 16,
                      //                     fontWeight: FontWeight.bold)),
                      //           )),
                      //     ],
                      //   ),
                      // )
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
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInUp(
                    duration: Duration(milliseconds: 1300),
                    child: makeCard(
                        context: context,
                        startColor: Color.fromRGBO(160, 117, 54, 1),
                        endColor: Color.fromRGBO(157, 78, 14, 1),
                        image: 'assets/e.png'),
                  );
                },
                // children: <Widget>[/** I want FadeUp widget in here are looped */],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => currentIndex = index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }

  Widget makeCard({context, startColor, endColor, image}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            PageTransition(type: PageTransitionType.fade, child: Detail()));
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
                    offset: Offset(5, 10))
              ]),
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Center(
              child: Image.asset(image),
            ),
          ),
        ),
      ),
    );
  }
}
