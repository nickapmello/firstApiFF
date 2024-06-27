import '/flutter_flow/flutter_flow_util.dart';
import 'forms_c_e_p_widget.dart' show FormsCEPWidget;
import 'package:flutter/material.dart';

class FormsCEPModel extends FlutterFlowModel<FormsCEPWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
