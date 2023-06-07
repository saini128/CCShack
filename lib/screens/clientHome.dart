import 'package:flutter/material.dart';

class ClientHome extends StatefulWidget {
  ClientHome({Key? key}) : super(key: key);

  @override
  State<ClientHome> createState() => _ClientHome();
}

class _ClientHome extends State<ClientHome> {
  double _riskValue = 10.0; // Initial value for the risk adjustment slider
  String _riskFactorText = 'Risk Factor: 10.0%'; // Initial text for the risk factor

  @override
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
              'Welcome Client',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(56, 170, 145, 1),
                elevation: 3,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 15, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Investment Details',
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
                      '\u{20B9} 5,86,900.25',
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
                                'Investment Performance',
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
                                  elevation: 4,
                                  child: Container(
                                    width: 100,
                                    height: 350,
                                    constraints: BoxConstraints(
                                      minHeight: 100,
                                      maxHeight: 450,
                                    ),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [

                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Invested on: 05/06/2023',
                                            ),
                                            dense: false,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Session Started: 10:44 AM 05/06/2023',
                                            ),
                                            dense: false,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Session Ended: 2:44 AM 05/06/2023',
                                            ),
                                            dense: false,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                                          child: ListTile(
                                            title: Text(
                                              'Profit: Rs. 86,900.25',
                                              style: TextStyle(
                                                color: Colors.green,
                                              ),
                                            ),
                                            dense: false,
                                            contentPadding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
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
                          padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                          child: Row(
                            children: [
                              Text(
                                _riskFactorText,
                                style: TextStyle(fontSize: 16),
                              ),
                              Expanded(
                                child: Slider(
                                  value: _riskValue,
                                  min: 0,
                                  max: 100,
                                  divisions: 1000,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _riskValue = newValue;
                                      _riskFactorText = 'Risk Factor: ${newValue.toStringAsFixed(1)}%';
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    child: Text('Add Money'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(66, 190, 165, 1),
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    child: Text('Withdraw'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(66, 190, 165, 1),
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    child: Text('Message'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(66, 190, 165, 1),
                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}