import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class LoginAsDiredcor extends StatefulWidget {
  @override
  _LoginAsDiredcorState createState() => _LoginAsDiredcorState();
}

class _LoginAsDiredcorState extends State<LoginAsDiredcor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: new Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: AppBar(
                title: Text('',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 18)),
                leading: new IconButton(
                  icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                backgroundColor:
                    Colors.white,
                elevation: 0.0,
              ),
            ),
          ),
          SizedBox(height: 100.0),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text(" LOGIN AS DIRECTOR ",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.blue.shade900, fontSize: 18)),
                  SizedBox(height: 50.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.alternate_email),
                      hintText: 'What is your Email?',
                      labelText: 'Email',
                    ),
                    validator: Validators.compose([
                      Validators.required('Email is required'),
                      Validators.email('Invalid email address'),
                    ]),
                  ),
                  SizedBox(height: 40.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.enhanced_encryption_outlined),
                      hintText: 'What is your gmail password?',
                      labelText: 'PassWord',
                    ),
                    validator: Validators.compose([
                      Validators.required('Password is required'),
                      Validators.patternString(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                          'Invalid Password')
                    ]),
                  ),
                  SizedBox(height: 60.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0), backgroundColor: Colors.blue.shade900,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
