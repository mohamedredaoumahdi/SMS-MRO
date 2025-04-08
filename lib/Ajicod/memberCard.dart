import 'package:flutter/material.dart';

import 'membreDetails.dart';

class MembCard extends StatefulWidget {
  const MembCard({
    Key? key,
  }) : super(key: key);

  @override
  State<MembCard> createState() => _MembCardState();
}

class _MembCardState extends State<MembCard> {
  Future<void> _displayMessageDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return Expanded(
              child: Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Stack(
                    clipBehavior: Clip.none, alignment: Alignment.topCenter,
                    children: [
                      Container(
                        //height: 200,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Message',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade100,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: TextField(
                                  autofocus: false,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 16),
                                    hintText: 'Bonjour ...',
                                    //suffixIcon: Icon(Icons.search),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                color: Color(0xff00BDA1),
                                child: Text(
                                  'Envoyer',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: -60,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff00BDA1),
                            radius: 60,
                            child: Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 50,
                            ),
                          )),
                    ],
                  )));
        });
  }

  String _selectedtypePack = "Basic";

  List<String> listofPacks = ["Basic", "VIP"];

  String _selectedPriode = "1 mois";

  List<String> listofPeriodes = ["1 mois", "2 mois", "3 mois"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MembreDetailsPage()));
                },
                child: Card(
                  color: Color(0xff232031),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff00BDA1),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    height: 100,
                    //color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0, left: 20),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/images/blank-profile-picture-973460_640.png"),
                            minRadius: 30,
                            maxRadius: 30,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment(0.0, -0.5),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, top: 20),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Text("Nom Prénom"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [Text("Ville")],
                                  )
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
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      _displayPaiementDialog(context);
                                    },
                                    child: Icon(Icons.attach_money,
                                        color: Colors.white),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(), backgroundColor: Colors.blue,
                                      padding: EdgeInsets.all(10),
                                      minimumSize: Size(7, 6), // foreground
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      _displayMessageDialog(context);
                                    },
                                    child:
                                        Icon(Icons.email, color: Colors.white),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(), backgroundColor: Colors.blue,
                                      padding: EdgeInsets.all(10),
                                      minimumSize: Size(7, 6), // foreground
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
    );
  }

  Future<void> _displayPaiementDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Expanded(
              child: Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Stack(
                    clipBehavior: Clip.none, alignment: Alignment.topCenter,
                    children: [
                      Container(
                        //height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Montant",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 30,
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        cursorColor: Colors.white,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xff00BDA1),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Date",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 30,
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        cursorColor: Colors.white,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xff00BDA1),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Pack",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Container(
                                      height: 36,
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      //margin: const EdgeInsets.only(top: 5, bottom: 5),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        color: Color(0xff00BDA1),
                                        //border: Border.all()
                                      ),
                                      child: DropdownButton(
                                        value: _selectedtypePack,
                                        //isExpanded: true,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.white,
                                        ),
                                        items: listofPacks
                                            .map((e) => DropdownMenuItem(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      e,
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                  value: e,
                                                ))
                                            .toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedtypePack = value as String;
                                          });
                                        },
                                        selectedItemBuilder:
                                            (BuildContext context) =>
                                                listofPacks
                                                    .map((e) => Center(
                                                          child: Text(
                                                            e,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ))
                                                    .toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Periode",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Container(
                                      height: 36,
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      //margin: const EdgeInsets.only(top: 5, bottom: 5),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        color: Color(0xff00BDA1),
                                        //border: Border.all()
                                      ),
                                      child: DropdownButton(
                                        value: _selectedPriode,
                                        //isExpanded: true,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.white,
                                        ),
                                        items: listofPeriodes
                                            .map((e) => DropdownMenuItem(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      e,
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                  ),
                                                  value: e,
                                                ))
                                            .toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedPriode = value as String;
                                          });
                                        },
                                        selectedItemBuilder:
                                            (BuildContext context) =>
                                                listofPacks
                                                    .map((e) => Center(
                                                          child: Text(
                                                            e,
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ))
                                                    .toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                color: Color(0xff00BDA1),
                                child: Text(
                                  'Valider',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )));
        });
  }
}
