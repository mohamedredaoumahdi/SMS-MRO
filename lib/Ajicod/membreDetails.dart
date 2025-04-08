import 'package:flutter/material.dart';

import 'listeMembre.dart';

class MembreDetailsPage extends StatefulWidget {
  @override
  _MembreDetailsPageState createState() => _MembreDetailsPageState();
}

class _MembreDetailsPageState extends State<MembreDetailsPage> {
  String codeDialog = "";
  String codeDialog2 = "";
  String codeDialog3 = "";
  String codeDialog4 = "";
  String codeDialog5 = "";
  String valueNom = "Oumahdi";
  String valuePrenom = "Mohammed Reda";
  String valueEmail = "medredaoumahdi@gmail.com";
  String valueTele = "0000000000";
  String ville = "Agadir";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BDA1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: new Positioned(
                child: AppBar(
                  backgroundColor: Color(0xff00BDA1),
                  title: new Text("Nom Prenom",
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
            //SizedBox(height: 50),
            SizedBox(
              height: 651,
              child: Container(
                  height: double.infinity,
                  padding: EdgeInsets.only(left: 0, right: 0),
                  child: MembreDetailsWidget()),
            )
          ],
        ),
      ),
    );
  }
}

class MembreDetailsWidget extends StatefulWidget {
  @override
  _MembreDetailsWidgetState createState() => _MembreDetailsWidgetState();
}

class _MembreDetailsWidgetState extends State<MembreDetailsWidget> {
  TextEditingController _textFieldController = TextEditingController();

  Future<void> _displaySupprimerDialog(BuildContext context) async {
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
                                'Alert',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 15),
                                child: Text(
                                  'vous voulez vraiment supprimer se membre',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    color: Color(0xffd31414),
                                    child: Text(
                                      'Annuler',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    color: Color(0xff00BDA1),
                                    child: Text(
                                      'Confirmer',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
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
                              Icons.delete,
                              color: Colors.white,
                              size: 50,
                            ),
                          )),
                    ],
                  )));
        });
  }

  Future<void> _displayArchiverDialog(BuildContext context) async {
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
                                'Alert',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 15),
                                child: Text(
                                  'vous voulez vraiment archiver se membre',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    color: Color(0xffd31414),
                                    child: Text(
                                      'Annuler',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    color: Color(0xff00BDA1),
                                    child: Text(
                                      'Confirmer',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
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
                              Icons.archive,
                              color: Colors.white,
                              size: 50,
                            ),
                          )),
                    ],
                  )));
        });
  }

  Future<void> _displayValiderDialog(BuildContext context) async {
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
                                'Alert',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: Text(
                                  'les informations de ce membre sont modéfier avec succés',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
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
                                  'Merci',
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
                              Icons.verified,
                              color: Colors.white,
                              size: 50,
                            ),
                          )),
                    ],
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BDA1),
      body: SingleChildScrollView(
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
                  SizedBox(height: 100),
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextFormField(
                      initialValue: "Oumahdi",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le nom',
                        labelText: 'Nom',
                        labelStyle: TextStyle(
                            color: Color(0xff00BDA1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      initialValue: "Mohamed reda",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le prénom',
                        labelText: 'Prénom',
                        labelStyle: TextStyle(
                            color: Color(0xff00BDA1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      initialValue: "medredaoumahdi@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie l Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Color(0xff00BDA1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      initialValue: "0000000000",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le numéro de téléphone',
                        labelText: 'Téléphone',
                        labelStyle: TextStyle(
                            color: Color(0xff00BDA1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      initialValue: "Agadir",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        //icon: Icon(Icons.account_circle,color: Color(0xff00BDA1),),
                        hintText: 'Saisie le nom de la ville',
                        labelText: 'Ville',
                        labelStyle: TextStyle(
                            color: Color(0xff00BDA1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
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
                      //height: 78,
                      //width: 10,
                      ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffd31414),
                        ),
                        label: Text(
                          'Supprimer',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _displaySupprimerDialog(context);
                        },
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffbcbcbc),
                        ),
                        label: Text(
                          'archiver',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        icon: Icon(Icons.archive),
                        onPressed: () {
                          _displayArchiverDialog(context);
                        },
                      ),
                      Container(
                        width: 120,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff00BDA1),
                          ),
                          label: Text(
                            'Valider',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          icon: Icon(Icons.done),
                          onPressed: () {
                            _displayValiderDialog(context);
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 43,
                    width: 10,
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
