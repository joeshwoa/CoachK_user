import 'package:coachk_user/componants/primary_button_widget/primary_button_model.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'welcome.dart' show Welcome;
import 'package:flutter/material.dart';

class WelcomeModel extends FlutterFlowModel<Welcome> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for primaryButton component.
  late PrimaryButtonModel primaryButtonModel;

  @override
  void initState(BuildContext context) {
    primaryButtonModel = createModel(context, () => PrimaryButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    primaryButtonModel.dispose();
  }
}
