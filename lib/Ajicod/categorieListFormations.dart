import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CategorieListOfFormations extends StatelessWidget {
  _launchURL() async {
    const url = 'https://www.google.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BDA1),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: new Positioned(
              child: AppBar(
                backgroundColor: Color(0xff00BDA1),
                title: new Text("",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                //leading: CircleAvatar(
                //  backgroundImage: AssetImage(
                //      "assets/images/blank-profile-picture-973460_640.png"),
                //),
                //backgroundColor: Colors.white,
                elevation: 0.0,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                          color: Colors.white)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.logout_outlined, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          //SizedBox(height: 50, child: Container(color: Colors.amber)),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.only(left: 0, right: 5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
                  color: Color(0xff232031)),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  InkWell(
                    onTap: _launchURL,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Card(
                          color: Color(0xff232031),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff5D6D7E),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                            height: 100,
                            //color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment(0.0, -0.5),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30.0, top: 30),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text("Titre de formation"),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text("Octobre 7th,2021")
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  flex: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
