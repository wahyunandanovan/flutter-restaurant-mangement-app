import 'package:supabase/supabase.dart';

class SupabaseHandler {
  static String supabaseUrl = 'https://giqowynbaiuszhoajvfg.supabase.co';
  static String supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdpcW93eW5iYWl1c3pob2FqdmZnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTAyNjI0OTIsImV4cCI6MTk2NTgzODQ5Mn0.Bmrht_EABBQJRbo_rP6mhrJT0-VLtyq2EJnshXIcC90';

  final client = SupabaseClient(supabaseUrl, supabaseKey);
}
