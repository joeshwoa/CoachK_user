import 'package:coachk_user/componants/primary_button_widget/primary_button_widget.dart';
import 'package:coachk_user/screens/layout/layout.dart';
import 'package:coachk_user/screens/register/register.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';

import 'login_model.dart';
export 'login_model.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

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
                        'Welcome Back',
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
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Wrap(
                            spacing: 0,
                            runSpacing: 0,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Text(
                                'Forgot your password?',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                  fontFamily: 'Poppins',
                                  color:
                                  FlutterFlowTheme.of(context).accent2,
                                  fontSize: 10,
                                  letterSpacing: 0,
                                  lineHeight: 1.5,
                                ),
                              ),
                            ],
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
                          /// todo: go to layout
                          Navigator.push(context, PageTransition(
                            child: Layout(),
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 400),
                          ));
                          /*context.goNamed(
                            'home',
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
                            buttonText: 'Login',
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
                        'Don\'t have an account yet?',
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
                            /// todo: go to register
                            Navigator.push(context, PageTransition(
                              child: Register(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ));
                            /*context.goNamed(
                              'register',
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
                            'Register',
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
