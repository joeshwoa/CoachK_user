import 'package:coachk_user/componants/action_widget/action_widget.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'home_screen_model.dart';
export 'home_screen_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
        MoveEffect(
          curve: Curves.easeOut,
          delay: 0.0.ms,
          duration: 600.0.ms,
          begin: Offset(0.0, -40.0),
          end: Offset(0.0, 0.0),
        ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'actionOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
        VisibilityEffect(duration: 200.ms),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 200.0.ms,
          duration: 600.0.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effects: [
          VisibilityEffect(duration: 200.ms),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back',
                              textAlign: TextAlign.start,
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
                            Text(
                              'User Name',
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
                          ],
                        ),
                      ),
                      Stack(
                        alignment:
                        AlignmentDirectional(0.3999999999999999, -0.35),
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 48,
                            icon: Icon(
                              Icons.notifications,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).error,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffc58bf2),
                          Color(0xffeea4ce),
                        ],
                        stops: [0, 1],
                        begin: AlignmentDirectional(1, -1),
                        end: AlignmentDirectional(-1, 1),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BMI (Body Mass Index)',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.5,
                                  ),
                                ),
                                Text(
                                  'You have a healthy weight',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                    lineHeight: 1.5,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'View more',
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      iconPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        letterSpacing: 0,
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CircularPercentIndicator(
                            percent: 0.21,
                            radius: 35,
                            lineWidth: 12,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor: FlutterFlowTheme.of(context).primary,
                            backgroundColor:
                            FlutterFlowTheme.of(context).accent4,
                            center: Text(
                              '20.1',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                letterSpacing: 0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: wrapWithModel(
                    model: _model.actionModel,
                    updateCallback: () => setState(() {}),
                    child: ActionWidget(
                      label: 'Today\'s target',
                      button: 'Check',
                    ),
                  ).animateOnPageLoad(
                      animationsMap['actionOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Latest 7  workout',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0,
                              lineHeight: 1.5,
                            ),
                          ),
                          Text(
                            'see more',
                            style:
                            FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/fitness_2964514.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 4),
                                          child: Text(
                                            'Chest Workout',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .primaryText,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.w500,
                                              lineHeight: 1.5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 8),
                                          child: Text(
                                            '180 Calories Burn | 20minutes',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .secondaryText,
                                              letterSpacing: 0,
                                              lineHeight: 1.5,
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(50),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                .width,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                              borderRadius:
                                              BorderRadius.circular(50),
                                            ),
                                            child: LinearPercentIndicator(
                                              percent: 0.25,
                                              width: MediaQuery.sizeOf(context)
                                                  .width,
                                              lineHeight: 24,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                    FlutterFlowTheme.of(context).secondary,
                                    width: 1,
                                  ),
                                ),
                                child: Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/fitness_2964514.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 4),
                                            child: Text(
                                              'Ab Workout',
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodySmall
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .primaryText,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                                lineHeight: 1.5,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 8),
                                            child: Text(
                                              '200 Calories Burn | 30minutes',
                                              textAlign: TextAlign.start,
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .secondaryText,
                                                letterSpacing: 0,
                                                lineHeight: 1.5,
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                  .width,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                BorderRadius.circular(50),
                                              ),
                                              child: LinearPercentIndicator(
                                                percent: 0.45,
                                                width:
                                                MediaQuery.sizeOf(context)
                                                    .width,
                                                lineHeight: 24,
                                                animation: true,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                padding: EdgeInsets.zero,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 1,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    color:
                                    FlutterFlowTheme.of(context).secondary,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/fitness_2964522.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 4),
                                            child: Text(
                                              'Leg Workout',
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodySmall
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .primaryText,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.w500,
                                                lineHeight: 1.5,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 8),
                                            child: Text(
                                              '180 Calories Burn | 20minutes',
                                              textAlign: TextAlign.start,
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .secondaryText,
                                                letterSpacing: 0,
                                                lineHeight: 1.5,
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                  .width,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                borderRadius:
                                                BorderRadius.circular(50),
                                              ),
                                              child: LinearPercentIndicator(
                                                percent: 0.1,
                                                width:
                                                MediaQuery.sizeOf(context)
                                                    .width,
                                                lineHeight: 24,
                                                animation: true,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                padding: EdgeInsets.zero,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 1,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.chevron_right_rounded,
                                    color:
                                    FlutterFlowTheme.of(context).secondary,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
