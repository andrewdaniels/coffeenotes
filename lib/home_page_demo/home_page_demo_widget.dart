import '../create_note_new/create_note_new_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageDemoWidget extends StatefulWidget {
  HomePageDemoWidget({Key key}) : super(key: key);

  @override
  _HomePageDemoWidgetState createState() => _HomePageDemoWidgetState();
}

class _HomePageDemoWidgetState extends State<HomePageDemoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateNoteNewWidget(),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 56, 0, 12),
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
              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.tertiaryColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Name',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'DM Sans',
                                          ),
                                        ),
                                        Text(
                                          'Colombian Natural',
                                          style:
                                              FlutterFlowTheme.title2.override(
                                            fontFamily: 'DM Sans',
                                          ),
                                        )
                                      ],
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment(0.85, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 12, 0, 0),
                                          child: Icon(
                                            Icons.chevron_right_sharp,
                                            color:
                                                FlutterFlowTheme.secondaryColor,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Coffee (g)',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'DM Sans',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Text(
                                            '26g',
                                            style: FlutterFlowTheme.subtitle2
                                                .override(
                                              fontFamily: 'DM Sans',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Water (g)',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'DM Sans',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Text(
                                            '416',
                                            style: FlutterFlowTheme.subtitle2
                                                .override(
                                              fontFamily: 'DM Sans',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Brew Ratio',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'DM Sans',
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 4, 0, 0),
                                        child: Text(
                                          '1/17',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'DM Sans',
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.tertiaryColor,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'DM Sans',
                                        ),
                                      ),
                                      Text(
                                        'San Jose - Costa Rica',
                                        style: FlutterFlowTheme.title2.override(
                                          fontFamily: 'DM Sans',
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment(0.85, 0),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 12, 0, 0),
                                        child: Icon(
                                          Icons.chevron_right_sharp,
                                          color:
                                              FlutterFlowTheme.secondaryColor,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Coffee (g)',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'DM Sans',
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 4, 0, 0),
                                        child: Text(
                                          '26g',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'DM Sans',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Water (g)',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'DM Sans',
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 4, 0, 0),
                                        child: Text(
                                          '457g',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'DM Sans',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Brew Ratio',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'DM Sans',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                      child: Text(
                                        '1/17',
                                        style:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'DM Sans',
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
