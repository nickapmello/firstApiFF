import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for digitaDADOS widget.
  FocusNode? digitaDADOSFocusNode;
  TextEditingController? digitaDADOSTextController;
  String? Function(BuildContext, String?)? digitaDADOSTextControllerValidator;
  // Stores action output result for [Backend Call - API (Buscar CNPJ)] action in Button widget.
  ApiCallResponse? buscaCNPJ;
  // Stores action output result for [Backend Call - API (bsucarcep)] action in Button widget.
  ApiCallResponse? buscarCEP;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    digitaDADOSFocusNode?.dispose();
    digitaDADOSTextController?.dispose();
  }
}
