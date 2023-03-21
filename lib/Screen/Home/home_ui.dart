import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/Rectangle1.png",
          fit: BoxFit.fill,
          width: 500,
          height: 180,
        ),
        Image.asset(
          "assets/images/Rectangle2.png",
          fit: BoxFit.fill,
          width: 500,
          height: 360,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Container(
                child: Image.asset(
                  "assets/images/Rectangle3.png",
                  fit: BoxFit.fill,
                  width: 500,
                  height: 170,
                  // width: double.infinity,
                ),
              )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 290,
            ),
            SizedBox(height: 5),
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 150,
                                alignment: Alignment.centerRight,
                                decoration: BoxDecoration(
                                  color: Colors.white10,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        width: 200,
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 27,
                                            ),

                                            Column(
                                                  children: [
                                                Container(
                                                  alignment: Alignment.centerLeft,
                                                  child: CachedNetworkImage(
                                                    placeholder: (context,
                                                            url) =>
                                                        const CircularProgressIndicator(),
                                                    imageUrl:
                                                        'assets/images/icon.png',
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text('Lorem\nconsequat duis\nenim velit ',
                                                      style: TextStyle(
                                                      fontWeight: FontWeight.w100,
                                                      fontSize: 15
                                                      ,color: Colors.blue),
                                                ),),
                                              ]),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 175,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 470,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Container(
                                      alignment: Alignment.center,
                                      height: 70,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              ' New Here? Register',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Container(
                                      alignment: Alignment.centerRight,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue[600],
                                      ),
                                      child: OutlinedButton(
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 60,
                                          width: 120,
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w100,
                                                fontSize: 25),
                                          ),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.white,
                                          side: BorderSide(
                                            color: Colors.white,
                                            width: 1,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),

                                    // ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
