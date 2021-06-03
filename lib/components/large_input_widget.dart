import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeInputWidget extends StatefulWidget {
  LargeInputWidget({
    Key key,
    this.inputLabel,
    this.inputHint,
  }) : super(key: key);

  final String inputLabel;
  final String inputHint;

  @override
  _LargeInputWidgetState createState() => _LargeInputWidgetState();
}

class _LargeInputWidgetState extends State<LargeInputWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: TextFormField(
                controller: textController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: widget.inputLabel,
                  labelStyle: FlutterFlowTheme.title3.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.secondaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  hintText: widget.inputHint,
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
    );
  }
}
