import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetailsWidget extends StatefulWidget {
  CoffeeDetailsWidget({Key key, this.coffeeNoteRecord}) : super(key: key);

  final DocumentReference coffeeNoteRecord;

  @override
  _CoffeeDetailsWidgetState createState() => _CoffeeDetailsWidgetState();
}

class _CoffeeDetailsWidgetState extends State<CoffeeDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CoffeeNotesRecord>(
      stream: CoffeeNotesRecord.getDocument(widget.coffeeNoteRecord),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        final coffeeDetailsCoffeeNotesRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFFF1F4F8),
            iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
            automaticallyImplyLeading: false,
            leading: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.secondaryColor,
              size: 24,
            ),
            title: Text(
              'Coffee Notes',
              style: FlutterFlowTheme.subtitle1.override(
                fontFamily: 'DM Sans',
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                child: IconButton(
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                  icon: Icon(
                    Icons.edit_rounded,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 28,
                  ),
                  iconSize: 28,
                ),
              )
            ],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F4F8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Coffee Name',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'DM Sans',
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  child: Text(
                                    coffeeDetailsCoffeeNotesRecord.coffeeName,
                                    style: FlutterFlowTheme.title2.override(
                                      fontFamily: 'DM Sans',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          coffeeDetailsCoffeeNotesRecord
                                              .coffeeWeight
                                              .toString(),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'DM Sans',
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          coffeeDetailsCoffeeNotesRecord
                                              .waterWeight
                                              .toString(),
                                          style: FlutterFlowTheme.subtitle1
                                              .override(
                                            fontFamily: 'DM Sans',
                                            color:
                                                FlutterFlowTheme.primaryColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ratio',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'DM Sans',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                      child: Text(
                                        '1/16',
                                        style:
                                            FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'DM Sans',
                                          color: FlutterFlowTheme.primaryColor,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Brew Time',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'DM Sans',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                coffeeDetailsCoffeeNotesRecord.brewTime,
                                style: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'DM Sans',
                                  color: FlutterFlowTheme.primaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Text(
                            coffeeDetailsCoffeeNotesRecord.coffeeRating
                                .toString(),
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'DM Sans',
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        color: FlutterFlowTheme.primaryColor,
                        size: 24,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grind Size',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'DM Sans',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                coffeeDetailsCoffeeNotesRecord.grindSize
                                    .toString(),
                                style: FlutterFlowTheme.subtitle2.override(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grinder Used',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'DM Sans',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                coffeeDetailsCoffeeNotesRecord.grinderType,
                                style: FlutterFlowTheme.subtitle2.override(
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
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notes',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'DM Sans',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                            child: Text(
                              coffeeDetailsCoffeeNotesRecord.coffeeNotes,
                              style: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
