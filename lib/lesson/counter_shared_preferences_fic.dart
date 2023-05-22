import 'package:shared_preferences/shared_preferences.dart';

class CounterSharedPreferencesFic {
  Future<bool> saveDataCounter(int counter) async {
    final prefs = await SharedPreferences.getInstance();

    return await prefs.setInt('counter', counter);
  }

  Future<int> getDataCounter() async {
    final prefs = await SharedPreferences.getInstance();
    final counter = prefs.getInt('counter') ?? 0;
    return counter;
  }

  Future<bool> removeDataCounter() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove('counter');
  }
}
