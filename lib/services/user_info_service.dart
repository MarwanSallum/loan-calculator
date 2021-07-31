
import 'package:shared_preferences/shared_preferences.dart';

class UserInfoService{

  storeUserName(String value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", value);
  }

  storeUserOrganization(String value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("organization", value);
  }

  showUserName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString("name");
    return name;
  }

  showUserOrganization() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? organization = prefs.getString("organization");
    return organization;
  }

  removeUserName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("name");
  }

  removeUserOrganization() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("organization");
  }


  Future<bool> isWelcomeSeen() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getString("name") != null && prefs.getString("organization") != null){
      return true;
    }
    return false;
  }
}