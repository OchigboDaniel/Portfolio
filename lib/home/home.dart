import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:portfoliio/Theme/theme_constant.dart';
import 'package:portfoliio/constants/colors.dart';
import 'package:portfoliio/home/home_desktop.dart';
import 'package:portfoliio/home/home_tablet.dart';
import 'package:portfoliio/home/home_mobile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../Theme/theme_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final String lightThemeImageUrl = 'https://firebasestorage.googleapis.com/v0/b/portfolio-images-7eba9.appspot.com/o/lighttheme.png?alt=media&token=88db9b1b-6bc3-4493-8d07-10878448ed81';
    final String darkThemeImageUrl = 'https://firebasestorage.googleapis.com/v0/b/portfolio-images-7eba9.appspot.com/o/dark_theme.png?alt=media&token=dbd28ee8-b118-4c89-a6ec-bac620af5767';

    //var text = Lorem.paragraph(numSentences: 3, numParagraphs: 1);
    return Scaffold(
      appBar: AppBar(
        title: Text('Daniel'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: InkWell(
              onTap: (){Provider.of<ThemeManager>(context, listen: false).toggleTheme();},
              child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? '$lightThemeImageUrl' : '$darkThemeImageUrl'
                              )),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 1),
                                color: Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? DarkColors.appBarColor : LightColors.appBarColor,
                                blurRadius: 5
                            ),

                            BoxShadow(
                                offset: Offset(-1, -1),
                                color: Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? LightColors.appBarColor : DarkColors.appBarColor ,
                                blurRadius: 5
                            )
                          ],
                          color: Provider.of<ThemeManager>(context).themeData == AppTheme.lightTheme ? LightColors.appBarColor : DarkColors.appBarColor,
                          shape: BoxShape.circle
                      ),
                    )
          ),
      )]),

      body: ScreenTypeLayout(
        mobile: HomeMobile(theme: theme),
        tablet: HomeTablet(theme: theme,),
        desktop: HomeDesktop(theme: theme),
      ),
    );
  }
}
