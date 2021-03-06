import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../register/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding1Widget extends StatefulWidget {
  Onboarding1Widget({Key key}) : super(key: key);

  @override
  _Onboarding1WidgetState createState() => _Onboarding1WidgetState();
}

class _Onboarding1WidgetState extends State<Onboarding1Widget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/logo_flat.svg',
                width: 220,
                height: 40,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                              child: PageView(
                                controller: pageViewController,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.asset(
                                    'assets/images/onboarding_1@2x.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Image.asset(
                                    'assets/images/onboarding_2@2x.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Image.asset(
                                    'assets/images/onboarding_3@2x.png',
                                    width: 330,
                                    height: 100,
                                    fit: BoxFit.fitHeight,
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment(0, 1),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: SmoothPageIndicator(
                                  controller: pageViewController,
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 8,
                                    dotHeight: 8,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor:
                                        FlutterFlowTheme.primaryColor,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 36, 0, 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 150),
                            reverseDuration: Duration(milliseconds: 150),
                            child: RegisterWidget(),
                          ),
                        );
                      },
                      text: 'Create Account',
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
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 150),
                          reverseDuration: Duration(milliseconds: 150),
                          child: LoginWidget(),
                        ),
                      );
                    },
                    text: 'Login',
                    options: FFButtonOptions(
                      width: 230,
                      height: 50,
                      color: FlutterFlowTheme.tertiaryColor,
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.primaryColor,
                      ),
                      elevation: 2,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
