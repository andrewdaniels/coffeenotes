import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatefulWidget {
  SecondaryButtonWidget({Key key, this.buttonText}) : super(key: key);

  final String buttonText;

  @override
  _SecondaryButtonWidgetState createState() => _SecondaryButtonWidgetState();
}

class _SecondaryButtonWidgetState extends State<SecondaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('secondaryButton pressed ...');
      },
      text: widget.buttonText,
      options: FFButtonOptions(
        width: 230,
        height: 50,
        color: FlutterFlowTheme.tertiaryColor,
        textStyle: FlutterFlowTheme.subtitle2.override(
          fontFamily: 'DM Sans',
          color: FlutterFlowTheme.primaryColor,
          fontWeight: FontWeight.w600,
        ),
        elevation: 2,
        borderSide: BorderSide(
          color: Color(0xFFF1F4F8),
          width: 1,
        ),
        borderRadius: 8,
      ),
    );
  }
}
