// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<String?> signInWithPhone(
  String phone,
  String password,
) async {
  // Add your function code here!
  // Instantiate Supabase client
  final supabase = Supabase.instance.client;

  try {
    // Try to sign in with phone number and password
    await supabase.auth.signInWithPassword(
      phone: phone,
      password: password,
    );

    // return null if no errors
    return null;
  }
  // return errors to be displayed to user
  on AuthException catch (e) {
    return e.message;
  }
}
