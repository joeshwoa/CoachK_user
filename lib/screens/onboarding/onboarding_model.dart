import 'package:coachk_user/componants/onboarding_button_widget/onboarding_button_model.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'onboarding.dart' show Onboarding;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<Onboarding> {
  ///  Local state fields for this page.

  double? page = 0.25;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
      pageViewController!.hasClients &&
      pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for onboardingButton component.
  late OnboardingButtonModel onboardingButtonModel1;
  // Model for onboardingButton component.
  late OnboardingButtonModel onboardingButtonModel2;

  @override
  void initState(BuildContext context) {
    onboardingButtonModel1 =
        createModel(context, () => OnboardingButtonModel());
    onboardingButtonModel2 =
        createModel(context, () => OnboardingButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    onboardingButtonModel1.dispose();
    onboardingButtonModel2.dispose();
  }
}
