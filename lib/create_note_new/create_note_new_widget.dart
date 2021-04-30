import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNoteNewWidget extends StatefulWidget {
  CreateNoteNewWidget({Key key}) : super(key: key);

  @override
  _CreateNoteNewWidgetState createState() => _CreateNoteNewWidgetState();
}

class _CreateNoteNewWidgetState extends State<CreateNoteNewWidget> {
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
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: TextFormField(
                        controller: textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Coffee Name',
                          labelStyle: FlutterFlowTheme.title3.override(
                            fontFamily: 'DM Sans',
                            color: FlutterFlowTheme.secondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Ethiopian Natural, San Juan etc...',
                          hintStyle: FlutterFlowTheme.title3.override(
                            fontFamily: 'DM Sans',
                            color: FlutterFlowTheme.secondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'DM Sans',
                          color: FlutterFlowTheme.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 4, 8, 4),
                          child: TextFormField(
                            controller: textController2,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Coffee (g)',
                              labelStyle: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'DM Sans',
                              ),
                              hintText: '25g',
                              hintStyle: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'DM Sans',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 16, 0),
                          child: TextFormField(
                            controller: textController3,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Water (g)',
                              labelStyle: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'DM Sans',
                              ),
                              hintText: '455g',
                              hintStyle: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.subtitle1.override(
                              fontFamily: 'DM Sans',
                              color: FlutterFlowTheme.primaryColor,
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
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: TextFormField(
                        controller: textController4,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Brew Time',
                          labelStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'DM Sans',
                            color: FlutterFlowTheme.secondaryColor,
                          ),
                          hintText: '3:02',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'DM Sans',
                            color: FlutterFlowTheme.secondaryColor,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFDBE2E7),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'DM Sans',
                          color: FlutterFlowTheme.primaryColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 4, 8, 4),
                          child: TextFormField(
                            controller: textController5,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Grind Size',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                              hintText: 'Grind Setting',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'DM Sans',
                              color: FlutterFlowTheme.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 16, 0),
                          child: TextFormField(
                            controller: textController6,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Grinder Used',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                              hintText: 'Ode Grinder',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.secondaryColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFDBE2E7),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'DM Sans',
                              color: FlutterFlowTheme.primaryColor,
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
              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 343,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0xFFDBE2E7),
                        width: 2,
                      ),
                    ),
                    child: TextFormField(
                      controller: textController7,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Coffee Notes',
                        labelStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'DM Sans',
                          color: FlutterFlowTheme.secondaryColor,
                        ),
                        hintText:
                            'Enter what you thought of the coffee here...',
                        hintStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'DM Sans',
                          color: FlutterFlowTheme.secondaryColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
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
                        color: FlutterFlowTheme.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        'How would you rate this coffee?',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'DM Sans',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_border_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 36,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 36,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 36,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 36,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 36,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 36,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 36,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(2, 24, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final coffeeName = textController1.text;
                  final coffeeWeight = int.parse(textController2.text);
                  final waterWeight = int.parse(textController3.text);
                  final brewTime = textController4.text;
                  final grindSize = int.parse(textController5.text);
                  final grinderType = textController6.text;
                  final coffeeRating = 0;
                  final coffeeNotes = textController7.text;

                  final coffeeNotesRecordData = createCoffeeNotesRecordData(
                    coffeeName: coffeeName,
                    coffeeWeight: coffeeWeight,
                    waterWeight: waterWeight,
                    brewTime: brewTime,
                    grindSize: grindSize,
                    grinderType: grinderType,
                    coffeeRating: coffeeRating,
                    coffeeNotes: coffeeNotes,
                  );

                  await CoffeeNotesRecord.collection
                      .doc()
                      .set(coffeeNotesRecordData);
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'HomePage'),
                    ),
                    (r) => false,
                  );
                },
                text: 'Save Note',
                options: FFButtonOptions(
                  width: 230,
                  height: 50,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'DM Sans',
                    color: Colors.white,
                  ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                  borderRadius: 8,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
