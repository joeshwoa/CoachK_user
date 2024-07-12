import 'package:coachk_user/screens/register/register.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:coachk_user/componants/onboarding_button_widget/onboarding_button_widget.dart';

import 'onboarding_model.dart';
export 'onboarding_model.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with TickerProviderStateMixin {
  late OnboardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 200.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 200.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 200.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 200.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(60.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 500,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _model.pageViewController ??=
                      PageController(initialPage: 0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/woman-demonstrating-muscles-2d-isolated-illustration-female-athlete-sporty-girl-flat-character-on-cartoon-background-colorful-editable-scene-for-mobile-website-presentation-vector.png',
                            width: MediaQuery.sizeOf(context).width,
                            fit: BoxFit.cover,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(30, 32, 30, 30),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Track your goal',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.5,
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation1']!),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Wrap(
                                                spacing: 0,
                                                runSpacing: 1.428,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                WrapAlignment.start,
                                                verticalDirection:
                                                VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Text(
                                                    'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryText,
                                                      letterSpacing: 0,
                                                      lineHeight: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                        'rowOnPageLoadAnimation2']!),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/running-health-park-vector-flat-illustration_80802-105.png',
                            width: MediaQuery.sizeOf(context).width,
                            fit: BoxFit.cover,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(30, 32, 30, 30),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Get Active',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.5,
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation3']!),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Wrap(
                                                spacing: 0,
                                                runSpacing: 1.428,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                WrapAlignment.start,
                                                verticalDirection:
                                                VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Text(
                                                    'Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever.',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryText,
                                                      letterSpacing: 0,
                                                      lineHeight: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                        'rowOnPageLoadAnimation4']!),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/blog-online-concept-flat-design_106788-1990.png',
                            width: MediaQuery.sizeOf(context).width,
                            fit: BoxFit.cover,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation3']!),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(30, 32, 30, 30),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Eat Well',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.5,
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation5']!),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Wrap(
                                                spacing: 0,
                                                runSpacing: 1.428,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                WrapAlignment.start,
                                                verticalDirection:
                                                VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Text(
                                                    'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun.',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryText,
                                                      letterSpacing: 0,
                                                      lineHeight: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                        'rowOnPageLoadAnimation6']!),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/images/yoga-body-health-benefits-mind-and-emotions-pregnant-woman-in-yoga-pose-meditates-preparation-for-childbirth-flat-illustration-vector.png',
                            width: MediaQuery.sizeOf(context).width,
                            fit: BoxFit.cover,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation4']!),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(30, 32, 30, 30),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Improve Sleep  Quality',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.5,
                                            ),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation7']!),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Wrap(
                                                spacing: 0,
                                                runSpacing: 1.428,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                WrapAlignment.start,
                                                verticalDirection:
                                                VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Text(
                                                    'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning.',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryText,
                                                      letterSpacing: 0,
                                                      lineHeight: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                        'rowOnPageLoadAnimation8']!),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.page = _model.page! + 0.25;
                      });
                      await _model.pageViewController?.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Visibility(
                        visible: _model.page! < 1.0,
                        child: Stack(
                          alignment: AlignmentDirectional(0, 0),
                          children: [
                            wrapWithModel(
                              model: _model.onboardingButtonModel1,
                              updateCallback: () => setState(() {}),
                              child: OnboardingButtonWidget(),
                            ),
                            CircularPercentIndicator(
                              percent: _model.page!,
                              radius: 30,
                              lineWidth: 2,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor:
                              Color(0xff92a3fd),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (_model.page == 1.0)
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        /// todo: go to register
                        Navigator.push(context, PageTransition(
                          child: Register(),
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 300),
                        ));///
                        /*context.pushNamed(
                          'register',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                            ),
                          },
                        );*/
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            /// todo: go to register
                            Navigator.push(context, PageTransition(
                              child: Register(),
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                            ));
                            /*context.pushNamed(
                              'register',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                  PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                ),
                              },
                            );*/
                          },
                          child: Stack(
                            alignment: AlignmentDirectional(0, 0),
                            children: [
                              wrapWithModel(
                                model: _model.onboardingButtonModel2,
                                updateCallback: () => setState(() {}),
                                child: OnboardingButtonWidget(),
                              ),
                              CircularPercentIndicator(
                                percent: 1,
                                radius: 30,
                                lineWidth: 2,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                Color(0xff92a3fd),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
