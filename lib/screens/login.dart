import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'register.dart';
import 'traderHome.dart';
import 'clientHome.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [

                      TextField(
                        controller: _email,
                        decoration: InputDecoration(
                            hintText: 'Enter your email here...',
                            border: InputBorder.none),
                      ),
                      TextField(
                        controller: _password,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter your password here...',
                            border: InputBorder.none),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          String em=_email.text;
                          String pswd=_password.text;
                          if(em=='trader@CCS.com' && pswd=='123')
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  TraderHome()),);
                            }
                          if(em=='client@CCS.com' && pswd=='123')
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  ClientHome()),);

                          }

                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Don\'t have an account?   ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Register()),);
                            },
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

}