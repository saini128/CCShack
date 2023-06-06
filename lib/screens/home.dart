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
            padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
          child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 164,
                    height: 234,
                    fit: BoxFit.fitHeight,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 20),
                            child: ElevatedButton(
                              onPressed: ()  {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Register()),);

                              },
                              child:  Text('Register', style: TextStyle(
                                fontSize: 18,
                              ),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(66, 190, 165, 1),
                                // width: 200,
                                // height: 50,
                                minimumSize: Size(200, 50),
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                               // iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                //color: FlutterFlowTheme.of(context).primary,

                                elevation: 3,
                                // borderSide: BorderSide(
                                //   color: Colors.transparent,
                                //   width: 1,
                                // ),
                                // borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: ()  {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Login()),);

                            },
                            child:  Text('Login', style: TextStyle(
                              color: Color.fromRGBO(66, 190, 165, 1),
                              fontSize: 18,
                            ),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              // width: 200,
                              // height: 50,
                              minimumSize: Size(200, 50),

                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              //iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              //color: Colors.white,

                              elevation: 3,
                              // borderSide: BorderSide(
                              //   color: Colors.transparent,
                              //   width: 1,
                              // ),
                              // borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          ),
          ),
        ],
      ),
    );
  }
}