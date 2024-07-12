import 'package:coachk_user/componants/primary_button_widget/primary_button_widget.dart';
import 'package:coachk_user/screens/layout/layout.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';

import 'registration_success_model.dart';
export 'registration_success_model.dart';

class RegistrationSuccess extends StatefulWidget {
  const RegistrationSuccess({super.key});

  @override
  State<RegistrationSuccess> createState() =>
      _RegistrationSuccessState();
}

class _RegistrationSuccessState extends State<RegistrationSuccess> {
  late RegistrationSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrationSuccessModel());

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
        backgroundColor: Colors.white,
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
                        Image.asset(
                          'assets/images/trail-running-isolated-cartoon-vector-illustrations_107173-22951.png',
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Welcome, User',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  lineHeight: 1.5,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 0),
                                child: Text(
                                  'You are all set now, let’s reach your goals together with us',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0,
                                    lineHeight: 1.5,
                                  ),
                                ),
                              ),
                            ],
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
                            /// todo: go to layout
                            Navigator.push(context, PageTransition(
                              child: Layout(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 400),
                            ));
                            /*context.goNamed(
                              'home',
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
                              buttonText: 'Go To Home',
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
