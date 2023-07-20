import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    Key? key,
    this.items,
  }) : super(key: key);

  final List<String>? items;

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget>
    with TickerProviderStateMixin {
  late NavBarModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 100.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 200.ms,
          begin: Offset(0.0, 22.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 18.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 110.0,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x00FFFFFF), Color(0x80FFFFFF)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 4.0,
                ),
                child: Container(
                  width: double.infinity,
                  height: 90.0,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          height: 88.0,
                          decoration: BoxDecoration(
                            color: Color(0xD8FFFFFF),
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final menuItem = widget.items?.toList() ?? [];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(menuItem.length,
                                  (menuItemIndex) {
                                final menuItemItem = menuItem[menuItemIndex];
                                return Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 0.0, 4.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if ((menuItemItem == 'Home') &&
                                                  (FFAppState()
                                                          .menuActiveItem !=
                                                      'Home')) {
                                                context.goNamed('Home');
                                              } else {
                                                if ((menuItemItem ==
                                                        'Search') &&
                                                    (FFAppState()
                                                            .menuActiveItem !=
                                                        'Search')) {
                                                  context.goNamed('Search');
                                                } else {
                                                  if ((menuItemItem ==
                                                          'Directory') &&
                                                      (FFAppState()
                                                              .menuActiveItem !=
                                                          'Directory')) {
                                                    context
                                                        .goNamed('Directory');
                                                  } else {
                                                    if ((menuItemItem ==
                                                            'Book') &&
                                                        (FFAppState()
                                                                .menuActiveItem !=
                                                            'Book')) {
                                                      context.goNamed('Book');
                                                    } else {
                                                      if ((menuItemItem ==
                                                              'Profile') &&
                                                          (FFAppState()
                                                                  .menuActiveItem !=
                                                              'Profile')) {
                                                        context
                                                            .goNamed('Profile');
                                                      }
                                                    }
                                                  }
                                                }
                                              }

                                              setState(() {
                                                FFAppState().menuActiveItem =
                                                    menuItemItem;
                                              });
                                            },
                                            child: Container(
                                              width: 100.0,
                                              height: double.infinity,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        if (menuItemItem ==
                                                            FFAppState()
                                                                .menuActiveItem)
                                                          Container(
                                                            width: 1.0,
                                                            height: 7.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        Stack(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          children: [
                                                            if (menuItemItem ==
                                                                FFAppState()
                                                                    .menuActiveItem)
                                                              Container(
                                                                width: 45.0,
                                                                height: 45.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          12.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      offset: Offset(
                                                                          0.0,
                                                                          0.0),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              14.0),
                                                                ),
                                                              ),
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              child: Stack(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                children: [
                                                                  if (menuItemItem ==
                                                                      'Home')
                                                                    Icon(
                                                                      FFIcons
                                                                          .khome5,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        menuItemItem ==
                                                                                FFAppState().menuActiveItem
                                                                            ? FFAppState().menuItemColors[menuItemIndex]
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  if (menuItemItem ==
                                                                      'Search')
                                                                    Icon(
                                                                      FFIcons
                                                                          .ksearch5,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        menuItemItem ==
                                                                                FFAppState().menuActiveItem
                                                                            ? FFAppState().menuItemColors[menuItemIndex]
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  if (menuItemItem ==
                                                                      'Directory')
                                                                    Icon(
                                                                      FFIcons
                                                                          .kfolder5,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        menuItemItem ==
                                                                                FFAppState().menuActiveItem
                                                                            ? FFAppState().menuItemColors[menuItemIndex]
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  if (menuItemItem ==
                                                                      'Book')
                                                                    Icon(
                                                                      FFIcons
                                                                          .kcalendar3,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        menuItemItem ==
                                                                                FFAppState().menuActiveItem
                                                                            ? FFAppState().menuItemColors[menuItemIndex]
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  if (menuItemItem ==
                                                                      'Profile')
                                                                    Icon(
                                                                      FFIcons
                                                                          .kuser5,
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        menuItemItem ==
                                                                                FFAppState().menuActiveItem
                                                                            ? FFAppState().menuItemColors[menuItemIndex]
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        if (menuItemItem ==
                                                            FFAppState()
                                                                .menuActiveItem)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              menuItemItem,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              maxLines: 1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      menuItemItem ==
                                                                              FFAppState()
                                                                                  .menuActiveItem
                                                                          ? valueOrDefault<
                                                                              Color>(
                                                                              FFAppState().menuItemColors[menuItemIndex],
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                            )
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                    ),
                                                                    fontSize:
                                                                        11.0,
                                                                  ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'textOnPageLoadAnimation']!),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (menuItemItem ==
                                          FFAppState().menuActiveItem)
                                        Container(
                                          width: 45.0,
                                          height: 6.0,
                                          decoration: BoxDecoration(
                                            color: valueOrDefault<Color>(
                                              FFAppState().menuItemColors[
                                                  menuItemIndex],
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation2']!),
                                    ],
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
