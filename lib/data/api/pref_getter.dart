import 'package:shared_preferences/shared_preferences.dart';

class PrefGetter {
  Future<String> getLastOrigin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String result = prefs.getString('lastOrigin') ?? '';
    return result;
  }

  void setLastOrigin(String newValue) async {
    print(newValue);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('lastOrigin', newValue);
  }
}
