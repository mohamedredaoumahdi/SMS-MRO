import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:school_management_system_01/backEnd/services/auth.dart';
import 'package:school_management_system_01/dashboardResponsible/dashboard.dart';
import 'package:school_management_system_01/loginsformat/login_as_responsible.dart';

class LandingResponsiblePage extends StatelessWidget {
  LandingResponsiblePage({required this.auth});
  final AuthBase auth;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserClient>(
        stream: auth.onAuthStateChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active){
            UserClient user = snapshot.data as UserClient;
            if (user == null as UserClient) {
              return LoginAsResponsible(
                auth: auth,
              );
            }
            return DashboardResponsible(
              //auth: auth,
            );
          }
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        });
  }
}
