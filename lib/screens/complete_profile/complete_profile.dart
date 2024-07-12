import 'package:coachk_user/componants/primary_button_widget/primary_button_widget.dart';
import 'package:coachk_user/screens/registration_success/registration_success.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';

import 'complete_profile_model.dart';
export 'complete_profile_model.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  late CompleteProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfileModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/girl-training-doing-squat-workout-art-vector-37387683.png',
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Let’s complete your profile',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.5,
                        ),
                      ),
                      Text(
                        'It will help us to know more about you!',
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0,
                          lineHeight: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent4,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18,
                                ),
                              ),
                              Expanded(
                                child: FlutterFlowDropDown(
                                  /*controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),*/
                                  options: [
                                    'Male',
                                    'Female',
                                    'Other',
                                    'Rather not say'
                                  ],
                                  onChanged: (val) => setState(
                                          () => _model.dropDownValue = val),
                                  width: 180,
                                  height: 50,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFADA4A5),
                                    letterSpacing: 0,
                                  ),
                                  hintText: 'Your gender',
                                  fillColor:
                                  FlutterFlowTheme.of(context).accent4,
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  borderRadius: 0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        onFieldSubmitted: (_) async {
                          final _datePickedDate = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: DateTime(1900),
                            lastDate: getCurrentTimestamp,
                          );

                          if (_datePickedDate != null) {
                            safeSetState(() {
                              _model.datePicked = DateTime(
                                _datePickedDate.year,
                                _datePickedDate.month,
                                _datePickedDate.day,
                              );
                            });
                          }
                        },
                        autofocus: false,
                        autofillHints: [AutofillHints.birthday],
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Date of birth',
                          hintStyle:
                          FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFFADA4A5),
                            letterSpacing: 0,
                            lineHeight: 1.5,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).accent4,
                          prefixIcon: Icon(
                            Icons.calendar_today_outlined,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 18,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0,
                        ),
                        keyboardType: TextInputType.datetime,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.textController2,
                              focusNode: _model.textFieldFocusNode2,
                              autofocus: false,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Your weight',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFADA4A5),
                                  letterSpacing: 0,
                                  lineHeight: 1.5,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                    FlutterFlowTheme.of(context).secondary,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                                prefixIcon: Icon(
                                  Icons.web,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryText,
                                letterSpacing: 0,
                              ),
                              keyboardType:
                              const TextInputType.numberWithOptions(
                                  decimal: true),
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffc58bf2),
                                      Color(0xffEEA4CE)
                                    ],
                                    stops: [0, 1],
                                    begin: AlignmentDirectional(-1, -0.14),
                                    end: AlignmentDirectional(1, 0.14),
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  'KG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.textController3,
                              focusNode: _model.textFieldFocusNode3,
                              autofocus: false,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Your height',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFADA4A5),
                                  letterSpacing: 0,
                                  lineHeight: 1.5,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                    FlutterFlowTheme.of(context).secondary,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).accent4,
                                prefixIcon: Icon(
                                  Icons.games_outlined,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 18,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryText,
                                letterSpacing: 0,
                              ),
                              keyboardType:
                              const TextInputType.numberWithOptions(
                                  decimal: true),
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffc58bf2),
                                      Color(0xffEEA4CE)
                                    ],
                                    stops: [0, 1],
                                    begin: AlignmentDirectional(-1, -0.14),
                                    end: AlignmentDirectional(1, 0.14),
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  'CM',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            /// todo: go to goals
                            Navigator.push(context, PageTransition(
                              child: RegistrationSuccess(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 400),
                            ));
                            /*context.pushNamed(
                              'goals',
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
                              buttonText: 'Next',
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
        ),
      ),
    );
  }
}
