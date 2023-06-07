import 'package:flutter/material.dart';

class TraderHome extends StatefulWidget {
  TraderHome({Key? key}) : super(key: key);

  @override
  State<TraderHome> createState() => _TraderHome();
}
class _TraderHome extends State<TraderHome> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Color.fromRGBO(66, 190, 165, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          Text(
          'Welcome Trader',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(56, 170, 145, 1),
                elevation: 3
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 15, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Capital Allotted',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                    child: Text(
                      '\u{20B9} 12,65,485.32',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 10, 0, 10),
                              child: Text(
                                'Messeges',

                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                                child: Material(
                                  // color: Colors.white,
                                  elevation: 4,
                                  child: Container(
                                    width: 100,
                                    height: 300,
                                    constraints: BoxConstraints(
                                      minHeight: 500,
                                      maxHeight: 500,
                                    ),

                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Rs. 10,00,000 Allocated',
                                              style: TextStyle(
                                                color: Colors.green,
                                              ),
                                            ),
                                            dense: false,
                                            contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Session Started  10:44 AM 05/06/2023',
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                            contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Session Ended  2:44 AM 05/06/2023',
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                            contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Profit Collected from Trader Rs. 2,65,485.32 for 05/06/2023',
                                              style: TextStyle(
                                                color: Colors.green,
                                              ),
                                            ),
                                            dense: false,
                                            contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    child: Text('Start Session'),
                                    style: ElevatedButton.styleFrom(
                                      //height: 50,
                                      backgroundColor: Color.fromRGBO(66, 190, 165, 1),
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      //iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                      // borderSide: BorderSide(
                                      //   color: Colors.transparent,
                                      //   width: 1,
                                      // ),
                                      //borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    child: Text('End Session'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(66, 190, 165, 1),
                                      //height: 50,
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      //iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                      // borderSide: BorderSide(
                                      //   color: Colors.transparent,
                                      //   width: 1,
                                      // ),
                                      // borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    child: Text('Message'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(66, 190, 165, 1),
                                      //height: 50,
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      //iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                      // borderSide: BorderSide(
                                      //   color: Colors.transparent,
                                      //   width: 1,
                                      // ),
                                      // borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}