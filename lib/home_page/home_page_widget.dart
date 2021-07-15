import '../backend/backend.dart';
import '../coffee_details/coffee_details_widget.dart';
import '../create_note_new/create_note_new_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF7F7F8),
      floatingActionButton: StreamBuilder<List<CoffeeNotesRecord>>(
        stream: queryCoffeeNotesRecord(
          queryBuilder: (coffeeNotesRecord) =>
              coffeeNotesRecord.orderBy('timeStamp', descending: true),
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          List<CoffeeNotesRecord> floatingActionButtonCoffeeNotesRecordList =
              snapshot.data;
          // Customize what your widget looks like with no query results.
          if (snapshot.data.isEmpty) {
            return Container(
              height: 100,
              child: Center(
                child: Text('No results.'),
              ),
            );
          }
          final floatingActionButtonCoffeeNotesRecord =
              floatingActionButtonCoffeeNotesRecordList.first;
          return FloatingActionButton(
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 200),
                  reverseDuration: Duration(milliseconds: 200),
                  child: CreateNoteNewWidget(
                    lastGrinderUsed:
                        floatingActionButtonCoffeeNotesRecord.grinderType,
                  ),
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
          );
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(24, 12, 0, 0),
                      child: Image.asset(
                        'assets/images/logo_flat@2x.png',
                        width: 220,
                        height: 31,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              StreamBuilder<List<CoffeeNotesRecord>>(
                stream: queryCoffeeNotesRecord(
                  queryBuilder: (coffeeNotesRecord) =>
                      coffeeNotesRecord.orderBy('timeStamp', descending: true),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  List<CoffeeNotesRecord> columnCoffeeNotesRecordList =
                      snapshot.data;
                  if (columnCoffeeNotesRecordList.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/emptyNotes@2x.png',
                        width: 375,
                      ),
                    );
                  }
                  return InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: Duration(milliseconds: 200),
                          reverseDuration: Duration(milliseconds: 200),
                          child: CreateNoteNewWidget(),
                        ),
                      );
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            columnCoffeeNotesRecordList.length, (columnIndex) {
                          final columnCoffeeNotesRecord =
                              columnCoffeeNotesRecordList[columnIndex];
                          return Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.rightToLeft,
                                            duration:
                                                Duration(milliseconds: 150),
                                            reverseDuration:
                                                Duration(milliseconds: 150),
                                            child: CoffeeDetailsWidget(
                                              coffeeNoteRecord:
                                                  columnCoffeeNotesRecord
                                                      .reference,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.tertiaryColor,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  16, 12, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      columnCoffeeNotesRecord
                                                          .coffeeName,
                                                      style: FlutterFlowTheme
                                                          .title2
                                                          .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 12, 0),
                                                    child: Icon(
                                                      Icons.chevron_right,
                                                      color: FlutterFlowTheme
                                                          .secondaryColor,
                                                      size: 24,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  16, 8, 0, 12),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 0, 0, 4),
                                                        child: Text(
                                                          'Coffee (g)',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText2
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        columnCoffeeNotesRecord
                                                            .coffeeWeight
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                            .title3
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          fontSize: 16,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            16, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 0, 0, 4),
                                                          child: Text(
                                                            'Water (g)',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          columnCoffeeNotesRecord
                                                              .waterWeight
                                                              .toString(),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .title3
                                                                  .override(
                                                            fontFamily:
                                                                'Lexend Deca',
                                                            fontSize: 16,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              16, 0, 0, 0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    0, 0, 0, 4),
                                                            child: Text(
                                                              'Roaster',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                              ),
                                                            ),
                                                          ),
                                                          AutoSizeText(
                                                            columnCoffeeNotesRecord
                                                                .roasterName,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .subtitle1
                                                                    .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color: FlutterFlowTheme
                                                                  .primaryColor,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
