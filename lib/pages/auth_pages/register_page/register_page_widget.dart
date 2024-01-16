import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterPageWidget extends StatefulWidget {
  const RegisterPageWidget({Key? key}) : super(key: key);


  @override
  _RegisterPageWidgetState createState() => _RegisterPageWidgetState();
}


class _RegisterPageWidgetState extends State<RegisterPageWidget> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
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
  
  
  
  @override
  void initState() {
    super.initState();

    passwordFieldVisibility1 = false;
    passwordFieldVisibility2 = false;
    
  

   emailAddressFieldController1 ??= TextEditingController();
   emailAddressFieldFocusNode1 ??= FocusNode();

   emailAddressFieldController2 ??= TextEditingController();
   emailAddressFieldFocusNode2 ??= FocusNode();

   emailAddressFieldController3 ??= TextEditingController();
   emailAddressFieldFocusNode3 ??= FocusNode();

   passwordFieldController1 ??= TextEditingController();
   passwordFieldFocusNode1 ??= FocusNode();

   passwordFieldController2 ??= TextEditingController();
   passwordFieldFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
     emailAddressFieldController1?.text =
          FFLocalizations.of(context).getText(
            'w3qs2idk' /* mouhib */,
          );
    }));
  }

  @override
  void dispose() {
   dispose();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'RegisterPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () =>unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus( unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                print('FloatingActionButton pressed ...');
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 8,
              child: Align(
                alignment: const AlignmentDirectional(0, 0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if ((Theme.of(context).brightness == Brightness.light) ==
                        true) {
                      setDarkModeSetting(context, ThemeMode.dark);
                      unawaited(
                            () async {}(),
                      );
                    } else {
                      setDarkModeSetting(context, ThemeMode.light);
                      unawaited(
                            () async {}(),
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF095542),
                          Color(0xB40C6E55),
                          Color(0xFF92D1C1)
                        ],
                        stops: [0, 0, 1],
                        begin: AlignmentDirectional(0, 1),
                        end: AlignmentDirectional(0, -1),
                      ),
                      shape: BoxShape.circle,
                    ),
                    alignment: const AlignmentDirectional(0, 0),
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (Theme.of(context).brightness == Brightness.light)
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setDarkModeSetting(context, ThemeMode.dark);
                                },
                                child: Icon(
                                  Icons.wb_sunny_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 40,
                                ),
                              ),
                            ),
                          if (Theme.of(context).brightness == Brightness.dark)
                            Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setDarkModeSetting(context, ThemeMode.light);
                                },
                                child: Icon(
                                  Icons.dark_mode,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 40,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.103,
                                    decoration: const BoxDecoration(),
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: Container(
                                  width: 535,
                                  decoration: const BoxDecoration(),
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 40),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            borderWidth: 1,
                                            buttonSize: 50,
                                            fillColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            icon: Icon(
                                              Icons.arrow_back,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .light700,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment:
                                              const AlignmentDirectional(-1, 0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 9, 0),
                                                child: SelectionArea(
                                                    child: Text(
                                                      FFLocalizations.of(context)
                                                          .getText(
                                                        'ua2spu11' /* Back to home */,
                                                      ),
                                                      style: FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .light700,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                            .containsKey(
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMediumFamily),
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 40, 0),
                                  child: Container(
                                    width: 500,
                                    decoration: const BoxDecoration(),
                                    child: Align(
                                      alignment: const AlignmentDirectional(83, 126),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment:
                                                const AlignmentDirectional(-1, 0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 10),
                                                  child: SelectionArea(
                                                      child: Text(
                                                        FFLocalizations.of(context)
                                                            .getText(
                                                          'qimd7k5c' /* Create an account */,
                                                        ),
                                                        style: FlutterFlowTheme.of(
                                                            context)
                                                            .headlineSmall
                                                            .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 32,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .headlineSmallFamily),
                                                          lineHeight: 1.2,
                                                        ),
                                                      )),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                const AlignmentDirectional(-1, 0),
                                                child: SelectionArea(
                                                    child: Text(
                                                      FFLocalizations.of(context)
                                                          .getText(
                                                        'fornutan' /* Welcome to the team! Please cr... */,
                                                      ),
                                                      style: FlutterFlowTheme.of(
                                                          context)
                                                          .bodySmall
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .light700,
                                                        fontSize: 18,
                                                        useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                            .containsKey(
                                                            FlutterFlowTheme.of(
                                                                context)
                                                                .bodySmallFamily),
                                                        lineHeight: 1.5,
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 32, 0, 0),
                                            child: Form(
                                              key:formKey,
                                              autovalidateMode:
                                              AutovalidateMode.disabled,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                            context)
                                                            .getText(
                                                          'br1fvqi2' /* Firstname */,
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyLargeFamily),
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller: 
                                                             emailAddressFieldController1,
                                                        focusNode: 
                                                            emailAddressFieldFocusNode1,
                                                        obscureText: false,
                                                        decoration:
                                                        InputDecoration(
                                                          labelStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          hintText:
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            'ysuuzq83' /* firstname */,
                                                          ),
                                                          hintStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFD0D5DD),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              14,
                                                              10,
                                                              14,
                                                              10),
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMediumFamily,
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyMediumFamily),
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        keyboardType:
                                                        TextInputType
                                                            .emailAddress,
                                                        validator: 
                                                            emailAddressFieldController1Validator
                                                            .asValidator(
                                                            context),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 10)),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                            context)
                                                            .getText(
                                                          '15fqyofa' /* Lastname */,
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyLargeFamily),
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller:  emailAddressFieldController2,
                                                        focusNode:  emailAddressFieldFocusNode2,
                                                        obscureText: false,
                                                        decoration:
                                                        InputDecoration(
                                                          labelStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          hintText:
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            '8p9a6s8g' /* lastname */,
                                                          ),
                                                          hintStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFD0D5DD),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              14,
                                                              10,
                                                              14,
                                                              10),
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMediumFamily,
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyMediumFamily),
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        keyboardType:
                                                        TextInputType
                                                            .emailAddress,
                                                        validator:  emailAddressFieldController2Validator
                                                            .asValidator(
                                                            context),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 10)),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                            context)
                                                            .getText(
                                                          '1pow0za5' /* Email */,
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyLargeFamily),
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller: 
                                                             emailAddressFieldController3,
                                                        focusNode: 
                                                             emailAddressFieldFocusNode3,
                                                        obscureText: false,
                                                        decoration:
                                                        InputDecoration(
                                                          labelStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          hintText:
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            'njp9uozc' /* Enter your email */,
                                                          ),
                                                          hintStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFD0D5DD),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              14,
                                                              10,
                                                              14,
                                                              10),
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMediumFamily,
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyMediumFamily),
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        keyboardType:
                                                        TextInputType
                                                            .emailAddress,
                                                        validator: 
                                                             emailAddressFieldController3Validator
                                                            .asValidator(
                                                            context),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 10)),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                            context)
                                                            .getText(
                                                          'h32dc4vd' /* Password */,
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyLargeFamily),
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller: 
                                                             passwordFieldController1,
                                                        focusNode: 
                                                             passwordFieldFocusNode1,
                                                        obscureText: !
                                                             passwordFieldVisibility1,
                                                        decoration:
                                                        InputDecoration(
                                                          labelStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          hintText:
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            'f032jd13' /* •••••••• */,
                                                          ),
                                                          hintStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFD0D5DD),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              14,
                                                              10,
                                                              14,
                                                              10),
                                                          suffixIcon: InkWell(
                                                            onTap: () =>
                                                                setState(
                                                                      () => 
                                                                       passwordFieldVisibility1 =
                                                                  !
                                                                       passwordFieldVisibility1,
                                                                ),
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                true),
                                                            child: Icon(
                                                             passwordFieldVisibility1
                                                                  ? Icons
                                                                  .visibility_outlined
                                                                  : Icons
                                                                  .visibility_off_outlined,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              size: 16,
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMediumFamily,
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyMediumFamily),
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        validator: 
                                                             passwordFieldController1Validator
                                                            .asValidator(
                                                            context),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 10)),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                            context)
                                                            .getText(
                                                          '7k2u7wsx' /* Confirm Password */,
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyLarge
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyLargeFamily),
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller: 
                                                             passwordFieldController2,
                                                        focusNode: 
                                                             passwordFieldFocusNode2,
                                                        obscureText: !
                                                             passwordFieldVisibility2,
                                                        decoration:
                                                        InputDecoration(
                                                          labelStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          hintText:
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            'gqu4xb2j' /* •••••••• */,
                                                          ),
                                                          hintStyle:
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            FlutterFlowTheme.of(context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .secondaryText,
                                                            fontSize:
                                                            16,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context).bodyMediumFamily),
                                                            lineHeight:
                                                            1.5,
                                                          ),
                                                          enabledBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFD0D5DD),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            BorderSide(
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          errorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          focusedErrorBorder:
                                                          OutlineInputBorder(
                                                            borderSide:
                                                            const BorderSide(
                                                              color: Color(
                                                                  0xFFFDA29B),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                          ),
                                                          contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              14,
                                                              10,
                                                              14,
                                                              10),
                                                          suffixIcon: InkWell(
                                                            onTap: () =>
                                                                setState(
                                                                      () => 
                                                                       passwordFieldVisibility2 =
                                                                  !
                                                                       passwordFieldVisibility2,
                                                                ),
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                true),
                                                            child: Icon(
                                                             passwordFieldVisibility2
                                                                  ? Icons
                                                                  .visibility_outlined
                                                                  : Icons
                                                                  .visibility_off_outlined,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .secondaryText,
                                                              size: 16,
                                                            ),
                                                          ),
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily: FlutterFlowTheme.of(
                                                              context)
                                                              .bodyMediumFamily,
                                                          color: FlutterFlowTheme.of(
                                                              context)
                                                              .primaryText,
                                                          fontSize: 16,
                                                          useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                              .containsKey(
                                                              FlutterFlowTheme.of(context)
                                                                  .bodyMediumFamily),
                                                          lineHeight:
                                                          1.5,
                                                        ),
                                                        validator: 
                                                             passwordFieldController2Validator
                                                            .asValidator(
                                                            context),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 10)),
                                                  ),
                                                ].divide(const SizedBox(height: 10)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 40, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                // amine button 2
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    if ( formKey
                                                        .currentState ==
                                                        null ||
                                                        ! formKey
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                  },
                                                  text: FFLocalizations.of(
                                                      context)
                                                      .getText(
                                                    'nqeck9ae' /* Register */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 60,
                                                    padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 0, 0),
                                                    iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 0, 0),
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondary,
                                                    textStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .titleSmall
                                                        .override(
                                                      fontFamily:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .titleSmallFamily,
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .primaryBackground,
                                                      useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                          .containsKey(
                                                          FlutterFlowTheme.of(
                                                              context)
                                                              .titleSmallFamily),
                                                    ),
                                                    elevation: 2,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 10),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            0, 0, 7, 0),
                                                        child: SelectionArea(
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                  context)
                                                                  .getText(
                                                                'jvw8nw59' /* Already have an account?   */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                fontFamily:
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .secondaryText,
                                                                useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                    .containsKey(
                                                                    FlutterFlowTheme.of(context)
                                                                        .bodyMediumFamily),
                                                              ),
                                                            )),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                        Colors.transparent,
                                                        focusColor:
                                                        Colors.transparent,
                                                        hoverColor:
                                                        Colors.transparent,
                                                        highlightColor:
                                                        Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                              'LoginPage');
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            'j6spk7f9' /* Login */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily: FlutterFlowTheme.of(
                                                                context)
                                                                .bodyMediumFamily,
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .primary,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600,
                                                            useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                                .containsKey(
                                                                FlutterFlowTheme.of(context)
                                                                    .bodyMediumFamily),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 40)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                  MediaQuery.sizeOf(context).height * 0.1,
                                  decoration: const BoxDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Expanded(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              '',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Container(
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                'https://i.imgur.com/RtvnEQ6.jpg',
                              ),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(200),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
