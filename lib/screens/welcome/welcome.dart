import 'package:coachk_user/componants/primary_button_widget/primary_button_widget.dart';
import 'package:coachk_user/screens/onboarding/onboarding.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';

import 'welcome_model.dart';
export 'welcome_model.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late WelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Flutter',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context)
                                    .primaryText,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                                lineHeight: 1.5,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                child: Text(
                                  'Fit',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                    fontFamily: 'Poppins',
                                    color:
                                    Color(0xff92a3fd),
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Everybody can train',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                            fontFamily: 'Poppins',
                            color:
                            FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 18,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            // todo: go to onboarding
                            Navigator.push(context, PageTransition(
                                child: Onboarding(),
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 400),
                            ));
                            /*context.goNamed(
                              'onboarding',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 400),
                                ),
                              },
                            );*/
                          },
                          child: wrapWithModel(
                            model: _model.primaryButtonModel,
                            updateCallback: () => setState(() {}),
                            child: PrimaryButtonWidget(
                              buttonText: 'Get started',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
