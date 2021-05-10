import '../create_note/create_note_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBrewsEmptyWidget extends StatefulWidget {
  MyBrewsEmptyWidget({Key key}) : super(key: key);

  @override
  _MyBrewsEmptyWidgetState createState() => _MyBrewsEmptyWidgetState();
}

class _MyBrewsEmptyWidgetState extends State<MyBrewsEmptyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF7F7F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateNoteWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: FlutterFlowTheme.tertiaryColor,
          size: 24,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 56, 0, 0),
                child: Image.asset(
                  'assets/images/logo_flat.svg',
                  width: 220,
                  height: 31,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/coffeeCupFit.svg',
                  width: 240,
                  height: 204,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No Brews Here',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.title2.override(
                    fontFamily: 'DM Sans',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Text(
                      'Coffee Notes is a simple app that allows you to keep a record of your daily brews. ',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'DM Sans',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateNoteWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'Create a Note',
                  options: FFButtonOptions(
                    width: 230,
                    height: 50,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'DM Sans',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
