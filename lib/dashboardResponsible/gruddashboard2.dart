import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management_system_01/Ajicod/formationPage.dart';
import 'package:school_management_system_01/Ajicod/formationPageForMembers.dart';
import 'package:school_management_system_01/Ajicod/membrePage.dart';
import 'package:school_management_system_01/Ajicod/paiementPage.dart';
import 'package:school_management_system_01/Ajicod/signale.dart';

class GridDash extends StatelessWidget {
  Items item1 = new Items(
      title: "Signals",
      subtitle: "March, Wednesday",
      page: SignalePage(),
      img: "assets/images/079.png");

  Items item2 = new Items(
    title: "Membre",
    subtitle: "Bocali, Apple",
    page: MembrePage(),
    img: "assets/images/009.png",
  );
  Items item3 = new Items(
    title: "Paiement",
    subtitle: "Bocali, Apple",
    page: PaiementPage(),
    img: "assets/images/009.png",
  );
  Items item4 = new Items(
    title: "Formation",
    subtitle: "Lucy Mao going to Office",
    page: FormationPage(),
    img: "assets/images/106-vision.png",
  );
  Items item5 = new Items(
    title: "Demande",
    subtitle: "Rose favirited your Post",
    page: FormationPageForMembers(),
    img: "assets/images/047-class.png",
  );
  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4,item5];
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.only(left: 15),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: myList.length,
        itemBuilder: (context, index) {
          final item = myList[index];
          return ListTile(
            //leading: Image.asset(item.img),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => item.page));
            },
            title: Container(
              padding: EdgeInsets.only(top:20),
              child: Stack(
                children: [
                  Positioned(
                    left: 40,
                    top: 25,
                    child: Container(
                      width: 300,
                      height: 40,
                      //padding: EdgeInsets.symmetric(),
                      //margin: const EdgeInsets.fromLTRB(0, 20, 20, 20),
                      decoration: BoxDecoration(
                          color: Color(0xff00BDA1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          item.title,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      //margin: EdgeInsets.only(right:320),
                      //padding: EdgeInsets,
                      decoration: BoxDecoration(
                        color: Color(0xff00BDA1),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        item.img,
                        height: 90,
                        width: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
class Items {
  String title;
  String subtitle;
  //String event;
  String img;
  Widget page;
  Items(
      {required this.title,
      required this.subtitle,
      required this.page,
      required this.img});
}
