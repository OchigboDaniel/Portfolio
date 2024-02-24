import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio/constants/text.dart';
import 'package:portfoliio/home/widget/image.dart';
import 'package:portfoliio/home/home_mobile.dart';
import 'package:portfoliio/home/widget/porfolio.dart';
import 'package:portfoliio/home/widget/socials.dart';
import 'package:portfoliio/home/widget/tools.dart';
import 'package:provider/provider.dart';

import '../Theme/theme_constant.dart';
import '../Theme/theme_manager.dart';
import '../constants/colors.dart';
import '../widgets/sizebox.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    Color containerColor =  theme.brightness == Brightness.light ? LightColors.appBarColor :  DarkColors.appBarColor;
    return SingleChildScrollView(
      child: Column(
        children: [

          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("I'm", style: theme.textTheme.subtitle2,),
                          Text("Daniel Ochigbo", style: theme.textTheme.headline2,),
                          Divider(
                            endIndent: 500,
                          ),
                       Text(AppText.textIntro,
                              overflow: TextOverflow.ellipsis, maxLines: 10,
                              style: theme.textTheme.bodyText2 ),


                          VerticalSpace(5),
                          SizedBox(
                            child: ToolImage()
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(child: MyImage(theme: theme, width: 450, height: 280,)),

                  Expanded(child: SizedBox(
                    width: 300,
                    child:Column(
                      children: [
                        VerticalSpace(30),
                        RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(
                              text: 'Tools\n',

                              style: GoogleFonts.abrilFatface(
                                  color: Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? Colors.black : Colors.white,
                                  fontSize: 14,
                                  fontWeight:  FontWeight.w700,
                                  decoration: TextDecoration.underline),
                              children: <TextSpan>[
                                TextSpan(
                                  text: AppText.skills,
                                  style: theme.textTheme.bodyText2
                                ),

                                TextSpan(
                                    text: 'Technical Skill\n',
                                    style: GoogleFonts.abrilFatface(
                                        color: Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? Colors.black : Colors.white,
                                        fontSize: 14,
                                        fontWeight:  FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                ),

                                TextSpan(
                                    text: AppText.skills2,
                                    style: theme.textTheme.bodyText2
                                ),
                              ]
                          ),
                ),

                        Sociails()
                      ],
                    ),
              ),
            ),
          ]))),

          VerticalSpace(20),

          Container(
              height: 250,
              width: double.infinity,
              child: Center(child: Porfolio( theme: theme.textTheme.subtitle2)))

        ],
      ),
    );
  }
}
