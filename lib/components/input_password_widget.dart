import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPasswordWidget extends StatefulWidget {
  InputPasswordWidget({Key key, this.inputValue, this.inputHint})
      : super(key: key);

  final String inputValue;
  final String inputHint;

  @override
  _InputPasswordWidgetState createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  TextEditingController inputPasswordController;

  @override
  void initState() {
    super.initState();
    inputPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: TextFormField(
        controller: inputPasswordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: widget.inputValue,
          labelStyle: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'DM Sans',
            color: FlutterFlowTheme.secondaryColor,
          ),
          hintText: widget.inputHint,
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
    );
  }
}