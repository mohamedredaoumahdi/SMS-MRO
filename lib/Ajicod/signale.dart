import 'package:flutter/material.dart';
import 'package:school_management_system_01/Ajicod/addSignale.dart';
import 'package:school_management_system_01/Ajicod/listeMembre.dart';
import 'package:school_management_system_01/backEnd/services/auth.dart';
import 'package:school_management_system_01/dashboardResponsible/gruddashboard2.dart';
import 'package:school_management_system_01/loginsformat/platFormAlertDialog.dart';

class SignalePage extends StatelessWidget {
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
                title: new Text("Signals",
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
              padding: EdgeInsets.only(left: 0, right: 5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
                  color: Color(0xff232031)),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00BDA1),
                          ),
                          label: Text(
                            'Nouveau',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddSignale()));
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SignalCardUp(),
                  SizedBox(height: 10),
                  SignalCardDown(),
                  SizedBox(height: 10),
                  SignalCardUp(),
                  SizedBox(height: 10),
                  SignalCardDown(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SignalCardUp extends StatelessWidget {
  const SignalCardUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Card(
          color: Color(0xff232031),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff5D6D7E),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                      padding: const EdgeInsets.only(left: 30.0, top: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("BUY"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [Text("GOLD")],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [Text("Octobre 7th,2021")],
                          ),
                        ],
                      ),
                    ),
                  ),
                  flex: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_upward, color: Colors.green),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), backgroundColor: Color(0xff5D6D7E),
                          padding: EdgeInsets.all(10),
                          minimumSize: Size(7, 6), // foreground
                        ),
                      ),
                    ],
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

class SignalCardDown extends StatelessWidget {
  const SignalCardDown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Card(
          color: Color(0xff232031),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff5D6D7E),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
                      padding: const EdgeInsets.only(left: 30.0, top: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("SOLD"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [Text("GOLD")],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [Text("Octobre 7th,2021")],
                          ),
                        ],
                      ),
                    ),
                  ),
                  flex: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_downward_rounded,
                            color: Colors.red),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), backgroundColor: Color(0xff5D6D7E),
                          padding: EdgeInsets.all(10),
                          minimumSize: Size(7, 6), // foreground
                        ),
                      ),
                    ],
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
