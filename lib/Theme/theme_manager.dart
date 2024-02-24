
import 'package:flutter/material.dart';
import 'package:portfoliio/Theme/theme_constant.dart';

class ThemeManager extends ChangeNotifier{

  ThemeData _themeData = AppTheme.lightTheme;

 ThemeData get themeData => _themeData;

 set themeData(ThemeData themeData){
   _themeData = themeData;
   notifyListeners();
 }

  void toggleTheme(){
    if (_themeData == AppTheme.lightTheme){
      themeData = AppTheme.darkTheme;
    }else{
      themeData = AppTheme.lightTheme;
    }
  }
}