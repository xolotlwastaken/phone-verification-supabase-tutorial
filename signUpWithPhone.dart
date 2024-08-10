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

Future<String?> signUpWithPhone(
  String phone,
  String password,
  String confirmPassword,
) async {
  // Add your function code here!
  // check if passwords match
  if (password == confirmPassword) {
    try {
      // instantiate Supabase client
      final supabase = SupaFlow.client;

      // call the Supabase sign up function
      final AuthResponse res = await supabase.auth.signUp(
        phone: phone,
        password: password,
      );

      // if no errors, return null
      return null;
    }
    // return any errors to be displayed to the user
    on AuthException catch (e) {
      return (e.message);
    }
  } else {
    return ("Passwords do not match.");
  }
}
