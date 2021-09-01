import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class InputNormalWidget extends StatefulWidget {
  InputNormalWidget({
    Key key,
    this.inputValue,
    this.inputHint,
  }) : super(key: key);

  final String inputValue;
  final String inputHint;

  @override
  _InputNormalWidgetState createState() => _InputNormalWidgetState();
}

class _InputNormalWidgetState extends State<InputNormalWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: TextFormField(
        controller: textController,
        obscureText: false,
        decoration: InputDecoration(
          labelText: widget.inputValue,
          labelStyle: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Lexend Deca',
            color: FlutterFlowTheme.secondaryColor,
          ),
          hintText: widget.inputHint,
          hintStyle: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Lexend Deca',
            color: FlutterFlowTheme.secondaryColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBE2E7),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBE2E7),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        style: FlutterFlowTheme.bodyText1.override(
          fontFamily: 'Lexend Deca',
          color: FlutterFlowTheme.primaryColor,
        ),
      ),
    );
  }
}
