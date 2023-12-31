import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://tqwmmrfohdyzwcrmyvsj.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRxd21tcmZvaGR5endjcm15dnNqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODk3MjAxMjUsImV4cCI6MjAwNTI5NjEyNX0.qG_0lDmLY9Ox2vm7-vwB5jtWIxHTftLtmbVpFKggfn0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
