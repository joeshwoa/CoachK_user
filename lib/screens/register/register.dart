import 'package:coachk_user/componants/primary_button_widget/primary_button_widget.dart';
import 'package:coachk_user/screens/complete_profile/complete_profile.dart';
import 'package:coachk_user/screens/login/login.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';

import 'register_model.dart';
export 'register_model.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Hey there,',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0,
                          lineHeight: 1.5,
                        ),
                      ),
                      Text(
                        'Create an account',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
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
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                      child: TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        autofocus: false,
                        autofillHints: [AutofillHints.name],
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'First Name',
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
                            Icons.person_outline_rounded,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 18,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0,
                        ),
                        keyboardType: TextInputType.name,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                      child: TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        autofocus: false,
                        autofillHints: [AutofillHints.name],
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Last Name',
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
                            Icons.person_outline_rounded,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 18,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0,
                        ),
                        keyboardType: TextInputType.name,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                      child: TextFormField(
                        controller: _model.textController3,
                        focusNode: _model.textFieldFocusNode3,
                        autofocus: false,
                        autofillHints: [AutofillHints.email],
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Email',
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
                            Icons.mail_outline_rounded,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 18,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                      child: TextFormField(
                        controller: _model.textController4,
                        focusNode: _model.textFieldFocusNode4,
                        autofocus: false,
                        autofillHints: [AutofillHints.password],
                        textInputAction: TextInputAction.done,
                        obscureText: !_model.passwordVisibility,
                        decoration: InputDecoration(
                          hintText: 'Password',
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
                            Icons.lock_outlined,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 18,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                                  () => _model.passwordVisibility =
                              !_model.passwordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        validator: _model.textController4Validator
                            .asValidator(context),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            unselectedWidgetColor:
                            FlutterFlowTheme.of(context).accent2,
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxValue = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: FlutterFlowTheme.of(context).accent2,
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 32, 0),
                            child: Wrap(
                              spacing: 0,
                              runSpacing: 0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Text(
                                  'By continuing you accept our Privacy Policy and Term of Use.',
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .accent2,
                                    fontSize: 10,
                                    letterSpacing: 0,
                                    lineHeight: 1.5,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 58, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          /// todo: go to goals
                          Navigator.push(context, PageTransition(
                            child: CompleteProfile(),
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 400),
                          ));
                          /*context.goNamed(
                            'goals',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 400),
                              ),
                            },
                          );*/
                        },
                        child: wrapWithModel(
                          model: _model.primaryButtonModel,
                          updateCallback: () => setState(() {}),
                          child: PrimaryButtonWidget(
                            buttonText: 'Register',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: 2,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: Text(
                                'Or',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: 2,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent2,
                                    width: 0.8,
                                  ),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsets.all(26),
                                    child: Image.asset(
                                      'assets/images/search_281764.png',
                                      width: 24,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).accent2,
                                    width: 0.8,
                                  ),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        26, 26, 26, 26),
                                    child: Image.asset(
                                      'assets/images/facebook_3128304.png',
                                      height: 24,
                                      fit: BoxFit.cover,
                                    ),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0,
                          lineHeight: 1.5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            /// todo: go to login
                            Navigator.push(context, PageTransition(
                              child: Login(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ));
                            /*context.goNamed(
                              'login',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );*/
                          },
                          child: Text(
                            'Login',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0,
                              lineHeight: 1.5,
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
