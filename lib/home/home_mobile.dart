import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio/home/widget/porfolio.dart';
import 'package:portfoliio/home/widget/socials.dart';
import 'package:portfoliio/home/widget/tools.dart';
import 'package:provider/provider.dart';
import '../Theme/theme_constant.dart';
import '../Theme/theme_manager.dart';
import '../constants/colors.dart';
import '../constants/text.dart';
import '../widgets/sizebox.dart';
import 'widget/image.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    Color containerColor =  theme.brightness == Brightness.light ? LightColors.appBarColor :  DarkColors.appBarColor;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Container(
            width: double.infinity,
            child: Column(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("I'm", style: theme.textTheme.subtitle2,),
                    Text("Daniel Ochigbo", style: theme.textTheme.headline2,),
                    Divider(
                      endIndent: 200,
                    ),
                    Text(AppText.textIntro,
                      overflow: TextOverflow.ellipsis, maxLines: 15,
                      style: theme.textTheme.bodyText1,),
                    VerticalSpace(10),

                    ToolImage(),

                    VerticalSpace(10),
                    MyImage(theme: theme, width: double.infinity, height: 230,),

                    VerticalSpace(10),
                    Sociails(),

                    SizedBox(
                      child: RichText(
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
                      ),)
                  ],
                ),

                VerticalSpace(20),

                Container(
                    height: 250,
                    width: double.infinity,
                    child: Center(child: Porfolio(theme: theme.textTheme.subtitle2)))

              ],
            )),
      ),
    );
  }
}
