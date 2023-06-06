import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _Register();
}
class _Register extends State<Register> {
  final _todoController = TextEditingController();
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
                        controller: _todoController,
                        decoration: InputDecoration(
                            hintText: 'Enter your name here...',
                            border: InputBorder.none),
                      ),
                      TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                            hintText: 'Enter your email here...',
                            border: InputBorder.none),
                      ),
                      TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                            hintText: 'Enter your password here...',
                            border: InputBorder.none),
                      ),
                      TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                            hintText: 'Confirm password here...',
                            border: InputBorder.none),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _dialogBuilder(context);
                            //Navigator.push(
                          //  context,
                             //MaterialPageRoute(builder: (context) =>  Login()),);
                        },
                        child: Text(
                          'Create Account',
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
                            'Already have an account?   ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Login()),);
                            },
                            child: Text(
                              'Login',
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
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Account Created'),
          content: const Text('Login using your email ID and password'),
          actions: [
            ElevatedButton(
                onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Login()),);
              },
                child: Text('OK'),
            )
          ],
        );
      },
    );
  }

}