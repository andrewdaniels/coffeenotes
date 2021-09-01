import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../coffee_detail/coffee_detail_widget.dart';
import '../components/create_modal_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCoffeesWidget extends StatefulWidget {
  MyCoffeesWidget({Key key}) : super(key: key);

  @override
  _MyCoffeesWidgetState createState() => _MyCoffeesWidgetState();
}

class _MyCoffeesWidgetState extends State<MyCoffeesWidget> {
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
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: SpinKitCubeGrid(
                  color: FlutterFlowTheme.secondaryColor,
                  size: 50,
                ),
              ),
            );
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
              await showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Container(
                    height: 300,
                    child: CreateModalWidget(),
                  );
                },
              );
            },
            backgroundColor: FlutterFlowTheme.primaryColor,
            elevation: 8,
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.tertiaryColor,
              size: 32,
            ),
          );
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 12, 0, 12),
                    child: Image.asset(
                      'assets/images/logo_flatSolo@2x.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: StreamBuilder<List<CoffeesRecord>>(
                  stream: queryCoffeesRecord(
                    queryBuilder: (coffeesRecord) => coffeesRecord
                        .where('userRecord', isEqualTo: currentUserReference)
                        .orderBy('dateCreated'),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SpinKitCubeGrid(
                            color: FlutterFlowTheme.secondaryColor,
                            size: 50,
                          ),
                        ),
                      );
                    }
                    List<CoffeesRecord> columnCoffeesRecordList = snapshot.data;
                    if (columnCoffeesRecordList.isEmpty) {
                      return Center(
                        child: Image.asset(
                          'assets/images/emptyNotes@2x.png',
                          width: 375,
                        ),
                      );
                    }
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(columnCoffeesRecordList.length,
                          (columnIndex) {
                        final columnCoffeesRecord =
                            columnCoffeesRecordList[columnIndex];
                        return Row(
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
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 150),
                                        reverseDuration:
                                            Duration(milliseconds: 150),
                                        child: CoffeeDetailWidget(
                                          coffeeDetails:
                                              columnCoffeesRecord.reference,
                                        ),
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
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          valueOrDefault<String>(
                                            columnCoffeesRecord.coffeePhoto,
                                            'https://firebasestorage.googleapis.com/v0/b/coffeenotes-442f4.appspot.com/o/cms_uploads%2Fcoffees%2F1630361656002000%2Fcoffee_Default%402x.png?alt=media&token=0192138b-d86a-4589-b9e7-582867a43afa',
                                          ),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 100,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(16, 12, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  columnCoffeesRecord
                                                      .coffeeName,
                                                  style: FlutterFlowTheme.title2
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
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
                                              16, 8, 16, 12),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 4),
                                                    child: Text(
                                                      'Roaster Name',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                          .bodyText2
                                                          .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    columnCoffeesRecord
                                                        .roasterName,
                                                    style: FlutterFlowTheme
                                                        .title3
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .primaryColor,
                                                      fontSize: 16,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    16, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 4),
                                                      child: Text(
                                                        'Roast Date',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                            .bodyText2
                                                            .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      dateTimeFormat(
                                                          'MMMEd',
                                                          columnCoffeesRecord
                                                              .roastDate),
                                                      style: FlutterFlowTheme
                                                          .title3
                                                          .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: FlutterFlowTheme
                                                            .primaryColor,
                                                        fontSize: 16,
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
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
