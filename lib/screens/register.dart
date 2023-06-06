import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';
class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _Register();
}
class _Register extends State<Register> {
  final _email = TextEditingController();
  final _name = TextEditingController();
  final _password = TextEditingController();
  final _cpassword = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(40 , 40, 40, 1),
                      
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                  child:  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 36),
                  child:Column(
                    mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        hintText: 'Enter your name here...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            //color: FlutterFlowTheme.of(context).secondary,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        //fillColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child:TextFormField(
                        controller: _email,
                        decoration: InputDecoration(
                          labelText: 'Email ID',
                          hintText: 'Enter your email address here...',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              //color: FlutterFlowTheme.of(context).secondary,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          //fillColor: FlutterFlowTheme.of(context).secondary,
                        ),
                        keyboardType: TextInputType.emailAddress,

                      ),),
                      Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child:TextFormField(
                        controller: _password,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password here...',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              //color: FlutterFlowTheme.of(context).secondary,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          //fillColor: FlutterFlowTheme.of(context).secondary,
                        ),
                      ),),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child:TextFormField(
                        controller: _cpassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: 'Enter your password again...',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              //color: FlutterFlowTheme.of(context).secondary,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          //fillColor: FlutterFlowTheme.of(context).secondary,
                        ),
                      ),),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child:ElevatedButton(
                        onPressed: () {
                          _dialogBuilder(context);

                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),),

                  ],
                ),
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