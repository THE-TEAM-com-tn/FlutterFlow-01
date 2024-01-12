import '/flutter_flow/flutter_flow_util.dart';
import 'signup_page_widget.dart' show SignupPageWidget;
import 'package:flutter/material.dart';

class SignupPageModel extends FlutterFlowModel<SignupPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode1;
  TextEditingController? emailAddressFieldController1;
  String? Function(BuildContext, String?)?
      emailAddressFieldController1Validator;
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode2;
  TextEditingController? emailAddressFieldController2;
  String? Function(BuildContext, String?)?
      emailAddressFieldController2Validator;
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode3;
  TextEditingController? emailAddressFieldController3;
  String? Function(BuildContext, String?)?
      emailAddressFieldController3Validator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode1;
  TextEditingController? passwordFieldController1;
  late bool passwordFieldVisibility1;
  String? Function(BuildContext, String?)? passwordFieldController1Validator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode2;
  TextEditingController? passwordFieldController2;
  late bool passwordFieldVisibility2;
  String? Function(BuildContext, String?)? passwordFieldController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility1 = false;
    passwordFieldVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFieldFocusNode1?.dispose();
    emailAddressFieldController1?.dispose();

    emailAddressFieldFocusNode2?.dispose();
    emailAddressFieldController2?.dispose();

    emailAddressFieldFocusNode3?.dispose();
    emailAddressFieldController3?.dispose();

    passwordFieldFocusNode1?.dispose();
    passwordFieldController1?.dispose();

    passwordFieldFocusNode2?.dispose();
    passwordFieldController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
