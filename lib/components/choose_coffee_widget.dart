import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseCoffeeWidget extends StatefulWidget {
  ChooseCoffeeWidget({Key key}) : super(key: key);

  @override
  _ChooseCoffeeWidgetState createState() => _ChooseCoffeeWidgetState();
}

class _ChooseCoffeeWidgetState extends State<ChooseCoffeeWidget> {
  bool checkboxListTileValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.tertiaryColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          StreamBuilder<List<CoffeesRecord>>(
            stream: queryCoffeesRecord(),
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
              // Customize what your widget looks like with no query results.
              if (snapshot.data.isEmpty) {
                return Container(
                  height: 100,
                  child: Center(
                    child: Text('No results.'),
                  ),
                );
              }
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(columnCoffeesRecordList.length,
                      (columnIndex) {
                    final columnCoffeesRecord =
                        columnCoffeesRecordList[columnIndex];
                    return CheckboxListTile(
                      value: checkboxListTileValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => checkboxListTileValue = newValue),
                      title: Text(
                        columnCoffeesRecord.coffeeName,
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.primaryColor,
                        ),
                      ),
                      subtitle: Text(
                        columnCoffeesRecord.roasterName,
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                      tileColor: FlutterFlowTheme.tertiaryColor,
                      activeColor: FlutterFlowTheme.primaryColor,
                      checkColor: FlutterFlowTheme.tertiaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    );
                  }),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 12, 0, 44),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Choose Coffee',
              options: FFButtonOptions(
                width: 230,
                height: 60,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
