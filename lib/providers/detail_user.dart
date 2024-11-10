import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DetailUser with ChangeNotifier {
  // final supabase = Supabase.instance.client;
  final Map<String, dynamic> _detailUser = {};

  Map<String, dynamic> get detailUser => _detailUser;

  void setDetailUser(int id) async {
    var result = await supabase.from('users').select('*').eq('id', id);
    _detailUser.clear();
    _detailUser.addAll(result[0]);
    notifyListeners();
  }

  void deleteUser(int id) async {
    await supabase.from('users').delete().eq('id', id);
    notifyListeners();
  }

  void editUser(Map<String, dynamic> data) async {
    await supabase.from('users').update({
      'nama': data['nama'],
      'email': data['email'],
      'alamat': data['alamat'],
      'no_hp': data['no_hp'],
    }).eq('id', data['id']);
    notifyListeners();
  }

  void addNewUser(Map<String, dynamic> data) async {
    await supabase.from('users').insert(data);
    notifyListeners();
  }
}
