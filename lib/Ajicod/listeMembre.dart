import 'package:flutter/material.dart';
import 'package:school_management_system_01/Ajicod/NouveauMembre.dart';
import 'package:school_management_system_01/Ajicod/membreDetails.dart';

import 'memberCard.dart';

class ListeMembre extends StatefulWidget {
  @override
  _ListeMembreState createState() => _ListeMembreState();
}

class _ListeMembreState extends State<ListeMembre> {
  String _selectedtypeFilter = "None";
  int _value = 1;
  List<String> listofFilters = ["None", "Active", "Archive"];

  @override
  Widget build(BuildContext context) {
    //int _selectedtypeFilter = 1;
    return Container(
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
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
                          builder: (context) => NouveauMembrePage()));
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Tolal Membres :",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ), //             <--- BoxDecoration here
                    child: Text(
                      "15",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              Container(
                height: 36,
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                //margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xff00BDA1),
                  //border: Border.all()
                ),
                child: DropdownButton(
                  value: _selectedtypeFilter,
                  //isExpanded: true,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  items: listofFilters
                      .map((e) => DropdownMenuItem(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                e,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedtypeFilter = value as String;
                    });
                  },
                  selectedItemBuilder: (BuildContext context) => listofFilters
                      .map((e) => Center(
                            child: Text(
                              e,
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MembCard(),
        MembCard(),
        MembCard(),
      ]),
    );
  }
}

