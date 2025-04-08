import 'package:flutter/material.dart';

class AddMembreWidget extends StatefulWidget {
  @override
  _AddMembreWidgetState createState() => _AddMembreWidgetState();
}

class _AddMembreWidgetState extends State<AddMembreWidget> {
  Future<void> _displayValiderDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15)),
            title: Text('Confirmer'),
            //content: Text(""),
            actions: <Widget>[
              FlatButton(
                color: Color(0xffd31414),
                textColor: Colors.white,
                child: Text('CANCEL'),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
              ),
              FlatButton(
                color: Colors.green.shade400,
                textColor: Colors.white,
                child: Text('CONFIRMER'),
                onPressed: () {
                  setState(() {
                    //codeDialog5 = ville;
                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BDA1),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //SizedBox(height: 50),
            Container(
              //height: double.infinity,
              padding: EdgeInsets.only(left: 0, right: 5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
                  color: Color(0xff232031)),
              child: Expanded(
                  child: Column(
                children: [
                  SizedBox(height: 50),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le nom',
                        labelText: 'Nom',
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
                  SizedBox(
                    height: 25,
                    //width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le prénom',
                        labelText: 'Prénom',
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
                  SizedBox(
                    height: 25,
                    //width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Gender',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  "Masculin",
                                  style: TextStyle(color: Colors.white),
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
                                  "Féminin",
                                  style: TextStyle(color: Colors.white),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    //width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie l Email',
                        labelText: 'Email',
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
                  SizedBox(
                    height: 25,
                    //width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le numéro de téléphone',
                        labelText: 'Téléphone',
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
                  SizedBox(
                    height: 25,
                    //width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie la Profession',
                        labelText: 'Profession',
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
                  SizedBox(
                    height: 25,
                    //width: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le nom de la ville',
                        labelText: 'Ville',
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
                  SizedBox(
                    height: 25,
                    //width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 53.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00BDA1),
                          ),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Valider',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          icon: Icon(Icons.done_rounded),
                          onPressed: () {
                            _displayValiderDialog(context);
                            //_displayArchiverDialog(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 78,
                    //width: 10,
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
