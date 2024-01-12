import '/flutter_flow/flutter_flow_util.dart';
import 'forget_password_page_widget.dart' show ForgetPasswordPageWidget;
import 'package:flutter/material.dart';

class ForgetPasswordPageModel
    extends FlutterFlowModel<ForgetPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode;
  TextEditingController? emailAddressFieldController;
  String? Function(BuildContext, String?)? emailAddressFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFieldFocusNode?.dispose();
    emailAddressFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
