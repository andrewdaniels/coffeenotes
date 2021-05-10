import '../backend/backend.dart';
import '../coffee_details/coffee_details_widget.dart';
import '../coffee_notes_details/coffee_notes_details_widget.dart';
import '../create_note_new/create_note_new_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            // return Container();
            // For now, we'll just include some dummy data.
            floatingActionButtonCoffeeNotesRecordList =
                createDummyCoffeeNotesRecord(count: 1);
          }
          final floatingActionButtonCoffeeNotesRecord =
              floatingActionButtonCoffeeNotesRecordList.first;
          return FloatingActionButton(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateNoteNewWidget(
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
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
                // Customize what your widget looks like with no query results.
                if (columnCoffeeNotesRecordList.isEmpty) {
                  return Center(
                    child: Image.asset(
                      'assets/images/emptyNotes.svg',
                    ),
                  );
                }
                return InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateNoteNewWidget(
                          lastGrinderUsed: 'Ode Grinder',
                        ),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnCoffeeNotesRecordList.length,
                        (columnIndex) {
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
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CoffeeDetailsWidget(),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.tertiaryColor,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child:
                                        StreamBuilder<List<CoffeeNotesRecord>>(
                                      stream: queryCoffeeNotesRecord(
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                              child:
                                                  CircularProgressIndicator());
                                        }
                                        List<CoffeeNotesRecord>
                                            columnCoffeeNotesRecordList =
                                            snapshot.data;
                                        // Customize what your widget looks like with no query results.
                                        if (snapshot.data.isEmpty) {
                                          // return Container();
                                          // For now, we'll just include some dummy data.
                                          columnCoffeeNotesRecordList =
                                              createDummyCoffeeNotesRecord(
                                                  count: 1);
                                        }
                                        final columnCoffeeNotesRecord =
                                            columnCoffeeNotesRecordList.first;
                                        return InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CoffeeNotesDetailsWidget(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    16, 12, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: StreamBuilder<
                                                          List<
                                                              CoffeeNotesRecord>>(
                                                        stream:
                                                            queryCoffeeNotesRecord(
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                                child:
                                                                    CircularProgressIndicator());
                                                          }
                                                          List<CoffeeNotesRecord>
                                                              textCoffeeNotesRecordList =
                                                              snapshot.data;
                                                          // Customize what your widget looks like with no query results.
                                                          if (snapshot
                                                              .data.isEmpty) {
                                                            // return Container();
                                                            // For now, we'll just include some dummy data.
                                                            textCoffeeNotesRecordList =
                                                                createDummyCoffeeNotesRecord(
                                                                    count: 1);
                                                          }
                                                          final textCoffeeNotesRecord =
                                                              textCoffeeNotesRecordList
                                                                  .first;
                                                          return Text(
                                                            textCoffeeNotesRecord
                                                                .coffeeName,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .title2
                                                                    .override(
                                                              fontFamily:
                                                                  'DM Sans',
                                                            ),
                                                          );
                                                        },
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
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
                                                            'Coffee (g)',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style:
                                                                FlutterFlowTheme
                                                                    .bodyText2
                                                                    .override(
                                                              fontFamily:
                                                                  'DM Sans',
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          columnCoffeeNotesRecord
                                                              .coffeeWeight
                                                              .toString(),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .title3
                                                                  .override(
                                                            fontFamily:
                                                                'DM Sans',
                                                            fontSize: 16,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              24, 0, 0, 0),
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
                                                                  TextAlign
                                                                      .start,
                                                              style:
                                                                  FlutterFlowTheme
                                                                      .bodyText2
                                                                      .override(
                                                                fontFamily:
                                                                    'DM Sans',
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
                                                                  'DM Sans',
                                                              fontSize: 16,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(0, 0,
                                                                    12, 0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  columnCoffeeNotesRecord
                                                                      .coffeeRating
                                                                      .toString(),
                                                                  style: FlutterFlowTheme
                                                                      .subtitle1
                                                                      .override(
                                                                    fontFamily:
                                                                        'DM Sans',
                                                                    color: FlutterFlowTheme
                                                                        .primaryColor,
                                                                  ),
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .star_rounded,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 24,
                                                                )
                                                              ],
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
                                        );
                                      },
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
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
