import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'package:flutter/material.dart';

import 'onboarding_button_model.dart';
export 'onboarding_button_model.dart';

class OnboardingButtonWidget extends StatefulWidget {
  const OnboardingButtonWidget({super.key});

  @override
  State<OnboardingButtonWidget> createState() => _OnboardingButtonWidgetState();
}

class _OnboardingButtonWidgetState extends State<OnboardingButtonWidget> {
  late OnboardingButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingButtonModel());

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
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff92a3fd),
              Color(0xff9dceff)
            ],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -0.14),
            end: AlignmentDirectional(-1, 0.14),
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.chevron_right,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}
