import 'package:flutter/material.dart';
import 'package:school_management_system_01/Ajicod/categorieListFormations.dart';

class FormationPage extends StatefulWidget {
  @override
  _FormationPageState createState() => _FormationPageState();
}

class _FormationPageState extends State<FormationPage> {
  List<String> options = <String>[
    'Celadon',
    'Candy apple red',
    'Cameo pink',
    'Carnelian'
  ];
  String dropdownValue = "Celadon";
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
                title: new Text("Formation",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 18)),

                //backgroundColor: Colors.white,
                elevation: 0.0,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                          color: Colors.white)),
                  IconButton(
                    onPressed: () {},
                    // => _confirmSignOut(context),
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00BDA1),
                          ),
                          label: Text(
                            'Ajouter',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          icon: Icon(Icons.add),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategorieListOfFormations()));
                    },
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
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 20, left: 0),
                                  child: Text(
                                    "Categorie 1",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
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
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, left: 0),
                                child: Text(
                                  "Categorie 2",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
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
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 20, left: 0),
                                child: Text(
                                  "Categorie 3",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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
