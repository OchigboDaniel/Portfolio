import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio/Theme/theme_constant.dart';
import 'package:portfoliio/Theme/theme_manager.dart';
import 'package:portfoliio/home/widget/image.dart';
import 'package:portfoliio/home/widget/porfolio.dart';
import 'package:portfoliio/home/widget/socials.dart';
import 'package:portfoliio/home/widget/tools.dart';
import 'package:provider/provider.dart';

import '../constants/text.dart';
import '../widgets/sizebox.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          Container(
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
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("I'm", style: theme.textTheme.subtitle2,),
                          Text("Daniel Ochigbo", style: theme.textTheme.headline2,),
                          Divider(
                            endIndent: 200,
                          ),
                          Text(AppText.textIntro,
                              overflow: TextOverflow.ellipsis, maxLines: 15,
                              style: TextStyle() ),

                          VerticalSpace(10),

                          ToolImage(),

                        ],
                      ),
                    ),
                  ),

                  Expanded(child: MyImage(theme: theme, width: 450, height: 280,)),

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: Sociails(),
          ),

          SizedBox(
            child: RichText(
              textAlign: TextAlign.center,
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
            )),

          VerticalSpace(20),

          Container(
              height: 250,
              width: double.infinity,
              child: Center(child: Porfolio(theme: theme.textTheme.subtitle2)))

        ],
      ),
    );;
  }
}
