import 'package:flutter/material.dart';
import 'package:school_management_system_01/dashboardResponsible/gruddashboard2.dart';

class DashboardResponsible extends StatelessWidget {
  //DashboardResponsible({required this.auth});
  //final AuthBase auth;

  //Future<void> _signOut() async {
  //  try {
  //    await auth.signOut();
  //  } catch (e) {
  //    print(e.toString());
  //  }
  //}

  //Future<void> _confirmSignOut(BuildContext context) async {
  //  final didRequestSignOut = await PlatformAlertDialog(
  //          title: 'Log Out',
  //          content: "Are you sure that you want to log out ?",
  //          cancelActionText: 'Cancel',
  //          defaultActionText: 'LogOut')
  //      .show(context);
  //  if (didRequestSignOut == true) {
  //    _signOut();
  //  }
  //}

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
                title: new Text("Salut Mohammed",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(color: Colors.white, fontSize: 18)),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/blank-profile-picture-973460_640.png"),
                ),
                //backgroundColor: Colors.white,
                elevation: 0.0,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                          color: Colors.white)),
                  IconButton(
                    onPressed: (){},
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
          Expanded(
            child: Container(
                height: double.infinity,
                padding: EdgeInsets.only(left:0,right: 5),
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80)),
                    color: Color(0xff232031)),
                child: Center(child: GridDash())),
          )
        ],
      ),
    );
  }
}
