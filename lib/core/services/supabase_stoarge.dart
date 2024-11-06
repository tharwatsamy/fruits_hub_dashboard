import 'dart:io';

import 'package:fruit_hub_dashboard/core/services/stoarage_service.dart';
import 'package:fruit_hub_dashboard/core/utils/keys.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStoargeService implements StoarageService {
  static late Supabase _supabase;
  static initSupabase() async {
    _supabase = await Supabase.initialize(
      url: kSupabaseUrl,
      anonKey: kSupabaseKey,
    );
  }

  @override
  Future<String> uploadFile(File file, String path) {}
}
