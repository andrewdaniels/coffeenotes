import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../splash/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordWidget extends StatefulWidget {
  ForgotPasswordWidget({Key key}) : super(key: key);

  @override
  _ForgotPasswordWidgetState createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => SplashWidget(),
              ),
              (r) => false,
            );
            await Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginWidget(),
              ),
              (r) => false,
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.secondaryColor,
            size: 24,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Forgot Password',
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'DM Sans',
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 4, 70, 0),
                      child: Text(
                        'Enter the email associated with your acount below.',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'DM Sans',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.tertiaryColor,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 330,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFEEEEEE),
                                width: 1,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment(0, 0.15),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: TextFormField(
                                  controller: textController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'DM Sans',
                                    ),
                                    hintText: 'Enter your email here...',
                                    hintStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'DM Sans',
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'DM Sans',
                                  ),
                                ),
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
                padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Submit',
                      options: FFButtonOptions(
                        width: 130,
                        height: 50,
                        color: FlutterFlowTheme.primaryColor,
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'DM Sans',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
