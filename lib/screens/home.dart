import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:npc/screens/register.dart';
import 'login.dart';
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40 , 40, 40, 1),
      body: Stack(
        children: [
          Container(
          padding: EdgeInsets.symmetric(
          horizontal: 20,
          ),
          child: Column(
          children: [
            Row(
              //Image.asset(assets/logo.png,fit: BoxFit.cover,),
              children: [
                Container(
                  child: Image.asset('assets/logo.png',
                    fit: BoxFit.cover,),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Register()),);
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 40,
                          ),
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
                          fontSize: 40,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
          ),
          ),
        ],
      ),
    );
  }
}