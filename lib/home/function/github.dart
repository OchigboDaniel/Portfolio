
import 'package:url_launcher/url_launcher.dart';

void lunchGithub() async{
  const githubUrl = 'https://github.com/OchigboDaniel';
  final Uri _githubUrl = Uri.parse(githubUrl);
  if (await canLaunchUrl(_githubUrl)){
    await  launchUrl(_githubUrl);
    return print('Success');
  }else{
    return print('Could not');
  }
}