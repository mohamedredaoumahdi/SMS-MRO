import 'package:flutter/material.dart';

class FormationsListWidget extends StatefulWidget {
  @override
  _FormationsListWidgetState createState() => _FormationsListWidgetState();
}

class _FormationsListWidgetState extends State<FormationsListWidget> {
  String _selectedtypeFilter = "Tout";
  List<String> listofFilters = ["Tout", "Categorie1", "Categorie2"];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff00BDA1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //SizedBox(height: 50),
            Container(
              height: height,
              padding: EdgeInsets.only(left: 0, right: 5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
                  color: Color(0xff232031)),
              child: Expanded(
                  child: Column(
                children: [
                  SizedBox(height: 40),
                  SizedBox(height: 60),
                  FormationCard(),
                  SizedBox(height: 15),
                  FormationCard(),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

class FormationCard extends StatelessWidget {
  const FormationCard({
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
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Categorie",
                                  style: TextStyle(fontSize: 18))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Row(
                              children: [
                                Text("Introduction Forex",style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
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
    );
  }
}
