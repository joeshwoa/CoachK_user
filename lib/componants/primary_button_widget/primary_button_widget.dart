import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';

import 'primary_button_model.dart';
export 'primary_button_model.dart';

class PrimaryButtonWidget extends StatefulWidget {
  const PrimaryButtonWidget({
    super.key,
    String? buttonText,
  }) : this.buttonText = buttonText ?? 'Primary';

  final String buttonText;

  @override
  State<PrimaryButtonWidget> createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  late PrimaryButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 22,
              color: Color(0x4D95ADFE),
              offset: Offset(
                0,
                10,
              ),
            )
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xff92a3fd),
              Color(0xff9dceff)
            ],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -0.14),
            end: AlignmentDirectional(-1, 0.14),
          ),
          borderRadius: BorderRadius.circular(99),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 18),
              child: Text(
                widget.buttonText,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
