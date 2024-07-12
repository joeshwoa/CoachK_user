import 'package:coachk_user/componants/primary_button_widget/primary_button_model.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'registration_success.dart' show RegistrationSuccess;
import 'package:flutter/material.dart';

class RegistrationSuccessModel
    extends FlutterFlowModel<RegistrationSuccess> {
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
