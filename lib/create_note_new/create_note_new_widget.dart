import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class CreateNoteNewWidget extends StatefulWidget {
  CreateNoteNewWidget({
    Key key,
    this.lastGrinderUsed,
  }) : super(key: key);

  final String lastGrinderUsed;

  @override
  _CreateNoteNewWidgetState createState() => _CreateNoteNewWidgetState();
}

class _CreateNoteNewWidgetState extends State<CreateNoteNewWidget> {
  CoffeeNotesRecord NewNote;
  TextEditingController brewTimeController;
  TextEditingController textController5;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController6;
  TextEditingController textController7;
  TextEditingController textController8;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    brewTimeController = TextEditingController();
    textController5 = TextEditingController();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController6 = TextEditingController();
    textController7 = TextEditingController(text: widget.lastGrinderUsed);
    textController8 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CoffeeNotesRecord>>(
      stream: queryCoffeeNotesRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        List<CoffeeNotesRecord> createNoteNewCoffeeNotesRecordList =
            snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          // return Container();
          // For now, we'll just include some dummy data.
          createNoteNewCoffeeNotesRecordList =
              createDummyCoffeeNotesRecord(count: 1);
        }
        final createNoteNewCoffeeNotesRecord =
            createNoteNewCoffeeNotesRecordList.first;
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
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.tertiaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
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
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.secondaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: 'Ethiopian Natural, San Juan etc...',
                                hintStyle: FlutterFlowTheme.title3.override(
                                  fontFamily: 'Lexend Deca',
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
                                fontFamily: 'Lexend Deca',
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
                                    labelStyle:
                                        FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Lexend Deca',
                                    ),
                                    hintText: '25g',
                                    hintStyle:
                                        FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Lexend Deca',
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
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.primaryColor,
                                  ),
                                  keyboardType: TextInputType.number,
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
                                    labelStyle:
                                        FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Lexend Deca',
                                    ),
                                    hintText: '455g',
                                    hintStyle:
                                        FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Lexend Deca',
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
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.primaryColor,
                                  ),
                                  keyboardType: TextInputType.number,
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(16, 4, 8, 4),
                                child: TextFormField(
                                  controller: brewTimeController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Brew Time',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.secondaryColor,
                                    ),
                                    hintText: 'Time it took to brew...',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
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
                                    fontFamily: 'Lexend Deca',
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
                                padding: EdgeInsets.fromLTRB(4, 4, 16, 4),
                                child: TextFormField(
                                  controller: textController5,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Roaster',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.secondaryColor,
                                    ),
                                    hintText: 'Roaster name...',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
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
                                    fontFamily: 'Lexend Deca',
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
                                  controller: textController6,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Grind Size',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.secondaryColor,
                                    ),
                                    hintText: 'Grind Setting',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
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
                                    fontFamily: 'Lexend Deca',
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
                                  controller: textController7,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Grinder Used',
                                    labelStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.secondaryColor,
                                    ),
                                    hintText: 'Ode Grinder',
                                    hintStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Lexend Deca',
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
                                    fontFamily: 'Lexend Deca',
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
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.92,
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
                              controller: textController8,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Coffee Notes',
                                labelStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                                hintText:
                                    'Enter what you thought of the coffee here...',
                                hintStyle: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.secondaryColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.multiline,
                            ),
                          ),
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
                        final brewTime = brewTimeController.text;
                        final grindSize = double.parse(textController6.text);
                        final grinderType = textController7.text;
                        final coffeeNotes = textController8.text;
                        final timeStamp = getCurrentTimestamp;
                        final roasterName = textController5.text;

                        final coffeeNotesRecordData =
                            createCoffeeNotesRecordData(
                          coffeeName: coffeeName,
                          coffeeWeight: coffeeWeight,
                          waterWeight: waterWeight,
                          brewTime: brewTime,
                          grindSize: grindSize,
                          grinderType: grinderType,
                          coffeeNotes: coffeeNotes,
                          timeStamp: timeStamp,
                          roasterName: roasterName,
                        );

                        final coffeeNotesRecordReference =
                            CoffeeNotesRecord.collection.doc();
                        await coffeeNotesRecordReference
                            .set(coffeeNotesRecordData);
                        NewNote = CoffeeNotesRecord.getDocumentFromData(
                            coffeeNotesRecordData, coffeeNotesRecordReference);
                        Navigator.pop(context);

                        setState(() {});
                      },
                      text: 'Save Note',
                      options: FFButtonOptions(
                        width: 230,
                        height: 50,
                        color: FlutterFlowTheme.primaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Lexend Deca',
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
          ),
        );
      },
    );
  }
}
