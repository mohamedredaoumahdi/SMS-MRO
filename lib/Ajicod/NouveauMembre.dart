import 'package:flutter/material.dart';
import 'package:school_management_system_01/Ajicod/addMembreWidget.dart';

class NouveauMembrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BDA1),
      body: LayoutBuilder(builder: (ctx, constrains) {
        return Scaffold(
          backgroundColor: Color(0xff00BDA1),
          body: Container(
            height: constrains.maxHeight,
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      child: new Positioned(
                        child: AppBar(
                          backgroundColor: Color(0xff00BDA1),
                          title: new Text("Ajouter un membre",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),

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
                    //SizedBox(height: 50),
                    SizedBox(
                      height: 700,
                      child: Container(
                          height: double.infinity,
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: Center(child: AddMembreWidget())),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
