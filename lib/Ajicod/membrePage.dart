import 'package:flutter/material.dart';

import 'listeMembre.dart';


class MembrePage extends StatelessWidget {
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
                title: new Text("Liste Des Membres",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(color: Colors.white, fontSize: 18)),
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
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
          ),
          //SizedBox(height: 50),
          Expanded(
            child: Container(
                height: double.infinity,
                padding: EdgeInsets.only(left:0,right: 5),
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80)),
                    color: Color(0xff232031)),
                child: ListeMembre()
                ),
          )
        ],
      ),
    );
  }
}