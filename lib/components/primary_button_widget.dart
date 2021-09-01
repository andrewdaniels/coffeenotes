import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButtonWidget extends StatefulWidget {
  PrimaryButtonWidget({
    Key key,
    this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  _PrimaryButtonWidgetState createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: widget.buttonText,
      options: FFButtonOptions(
        width: 230,
        height: 50,
        color: FlutterFlowTheme.primaryColor,
        textStyle: FlutterFlowTheme.subtitle2.override(
          fontFamily: 'Lexend Deca',
          color: FlutterFlowTheme.tertiaryColor,
          fontWeight: FontWeight.w600,
        ),
        elevation: 2,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
        borderRadius: 8,
      ),
    );
  }
}
