import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for newpass widget.
  FocusNode? newpassFocusNode;
  TextEditingController? newpassTextController;
  late bool newpassVisibility;
  String? Function(BuildContext, String?)? newpassTextControllerValidator;
  // State field(s) for confnewpass widget.
  FocusNode? confnewpassFocusNode;
  TextEditingController? confnewpassTextController;
  late bool confnewpassVisibility;
  String? Function(BuildContext, String?)? confnewpassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    newpassVisibility = false;
    confnewpassVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    newpassFocusNode?.dispose();
    newpassTextController?.dispose();

    confnewpassFocusNode?.dispose();
    confnewpassTextController?.dispose();
  }
}
