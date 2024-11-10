import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AllUsers with ChangeNotifier {
  final supabase = Supabase.instance.client;
  final List<Map<String, dynamic>> _users = [];

  List<Map<String, dynamic>> get users => _users;

  void getDatabaseUsers() async {
    var responses = await supabase.from('users').select('*');
    _users.clear();
    _users.addAll(responses);
    notifyListeners();
  }
}
