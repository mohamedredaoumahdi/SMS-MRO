import 'package:flutter/material.dart';

class AddSignale extends StatefulWidget {
  @override
  _AddSignaleState createState() => _AddSignaleState();
}

class _AddSignaleState extends State<AddSignale> {
  @override
  List<String> options = <String>[
    'Forex',
    'Treding',
    
  ];
  bool valuefirst = false;
  bool valuesecond = false;
  DateTime dateTime = DateTime.now();
  bool visibilityObs = false;
  //String dateTimePicked;
  void _changed() {
    setState(() {
      visibilityObs = !visibilityObs;
    });
  }
  String dropdownValue = "Forex";
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
                title: new Text("Nouveau Signale",
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
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff00BDA1),
                        border: Border.all()),
                    child: DropdownButton(
                      isExpanded: true,
                      value: dropdownValue,
                      //isExpanded: true,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      items:
                          options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          dropdownValue = value as String;
                        });
                      },
                      selectedItemBuilder: (BuildContext context) => options
                          .map((e) => Center(
                                child: Text(
                                  e,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le SL',
                        labelText: 'SL',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 18),
                        fillColor: Color(0xff5D6D7E),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            //width: 6,
                            color: Color(0xff00BDA1),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          //borderRadius: BorderRadius.circular(50)
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff00BDA1), width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le TP',
                        labelText: 'TP',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 18),
                        fillColor: Color(0xff5D6D7E),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            //width: 6,
                            color: Color(0xff00BDA1),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          //borderRadius: BorderRadius.circular(50)
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff00BDA1), width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 50,top:10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              "Buy",
                              style: TextStyle(color: Colors.white,fontSize: 16),
                            ),
                            Checkbox(
                              activeColor: Color(0xff00BDA1),
                              value: this.valuefirst,
                              onChanged: (value) {
                                setState(() {
                                  this.valuefirst = value!;
                                  this.valuesecond = false;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Sell",
                              style: TextStyle(color: Colors.white,fontSize: 16),
                            ),
                            Checkbox(
                              activeColor: Color(0xff00BDA1),
                              value: this.valuesecond,
                              onChanged: (value) {
                                setState(() {
                                  this.valuesecond = value!;
                                  this.valuefirst = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00BDA1),
                            //minimumSize: Size(200, 50)
                          ),
                          label: Text(
                            'Ajouter',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          icon: Icon(Icons.add),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}