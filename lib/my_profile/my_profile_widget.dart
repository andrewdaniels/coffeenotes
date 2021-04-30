import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileWidget extends StatefulWidget {
  MyProfileWidget({Key key}) : super(key: key);

  @override
  _MyProfileWidgetState createState() => _MyProfileWidgetState();
}

class _MyProfileWidgetState extends State<MyProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 64, 0, 0),
                child: Text(
                  'My Profile',
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.tertiaryColor,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color(0xFFEEEEEE),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 16, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Change Password',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'DM Sans',
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment(1, 0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.secondaryColor,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color(0xFFEEEEEE),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 16, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Upgrade Plan',
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'DM Sans',
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment(1, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: FlutterFlowTheme.secondaryColor,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Log Out',
                  options: FFButtonOptions(
                    width: 130,
                    height: 50,
                    color: FlutterFlowTheme.tertiaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'DM Sans',
                      color: Color(0xFFEE6262),
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 1,
                    borderSide: BorderSide(
                      color: Color(0xFFEEEEEE),
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
