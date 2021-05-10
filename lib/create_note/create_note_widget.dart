import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNoteWidget extends StatefulWidget {
  CreateNoteWidget({Key key}) : super(key: key);

  @override
  _CreateNoteWidgetState createState() => _CreateNoteWidgetState();
}

class _CreateNoteWidgetState extends State<CreateNoteWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  TextEditingController textController6;
  TextEditingController textController7;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
    textController7 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF8B97A2),
            size: 24,
          ),
        ),
        title: Text(
          'Create Note',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'DM Sans',
            color: FlutterFlowTheme.primaryColor,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.tertiaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 330,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0.15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: TextFormField(
                                controller: textController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Coffee Name',
                                  labelStyle: FlutterFlowTheme.title3.override(
                                    fontFamily: 'DM Sans',
                                    color: Color(0xFF8B97A2),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.title3.override(
                                  fontFamily: 'DM Sans',
                                  color: Color(0xFF8B97A2),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF1F4F8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0.15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: TextFormField(
                                controller: textController2,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Coffee (g)',
                                  labelStyle:
                                      FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'DM Sans',
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'DM Sans',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF1F4F8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0.15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: TextFormField(
                                controller: textController3,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Water (g)',
                                  labelStyle:
                                      FlutterFlowTheme.subtitle1.override(
                                    fontFamily: 'DM Sans',
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.subtitle1.override(
                                  fontFamily: 'DM Sans',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.tertiaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 330,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0.15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: TextFormField(
                                controller: textController4,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Total Time',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'DM Sans',
                                    color: FlutterFlowTheme.secondaryColor,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'DM Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF1F4F8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0.15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: TextFormField(
                                controller: textController5,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Grind Size',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'DM Sans',
                                    color: FlutterFlowTheme.secondaryColor,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'DM Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF1F4F8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0.15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                              child: TextFormField(
                                controller: textController6,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Grinder',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'DM Sans',
                                    color: FlutterFlowTheme.secondaryColor,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'DM Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        )
                      ],
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
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.tertiaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 330,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment(0, 0.15),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: TextFormField(
                                controller: textController7,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Coffee Notes',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'DM Sans',
                                    color: FlutterFlowTheme.secondaryColor,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'DM Sans',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                                maxLines: 240,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
