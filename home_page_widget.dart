import '../aihelper/xtheme.dart';
import '../aihelper/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: xTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: xTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-0.1, 0),
              child: Text(
                'Let\'s Move',
                textAlign: TextAlign.justify,
                style: xTheme.of(context).title1.override(
                      fontFamily: 'Br Cobane',
                      color: xTheme.of(context).primaryBtnText,
                      fontSize: 35,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                          child: Text(
                            'Good Evening  ',
                            style: xTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 25,
                                ),
                          ),
                        ),
                        Text(
                          'Adam',
                          style: xTheme.of(context).bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF2747E1),
                                fontSize: 25,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 54,
                              height: 100,
                              decoration: BoxDecoration(
                                color: xTheme.of(context).primaryBackground,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.house_siding_rounded,
                          color: Color(0xFF2747E1),
                          size: 30,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: xTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Color(0xFFC7C7C7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: 157,
                            height: 96.7,
                            decoration: BoxDecoration(
                              color: xTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Color(0xFFC7C7C7),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: 157,
                            height: 96.7,
                            decoration: BoxDecoration(
                              color: xTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Color(0xFFC7C7C7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: xTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Color(0xFFC7C7C7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: xTheme.of(context).secondaryBackground,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Color(0xFFC7C7C7),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
