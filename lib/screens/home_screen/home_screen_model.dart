import 'package:coachk_user/componants/action_widget/action_model.dart';
import 'package:flutterflow_ui_pro/flutterflow_ui_pro.dart';
import 'home_screen.dart' show HomeScreen;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeScreen> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Action component.
  late ActionModel actionModel;

  @override
  void initState(BuildContext context) {
    actionModel = createModel(context, () => ActionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    actionModel.dispose();
  }
}
