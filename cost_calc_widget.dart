import '../aihelper/flutter_flow_icon_button.dart';
import '../aihelper/xtheme.dart';
import '../aihelper/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CostCalcWidget extends StatefulWidget {
  const CostCalcWidget({Key? key}) : super(key: key);

  @override
  _CostCalcWidgetState createState() => _CostCalcWidgetState();
}

class _CostCalcWidgetState extends State<CostCalcWidget> {
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
        leading: xIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed(
              'HomePage',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                ),
              },
            );
          },
        ),
        title: Text(
          'Cost Calculator',
          style: xTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                    child: Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: xTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: xTheme.of(context).secondaryText,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
