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

Future<bool> confirmOtp(String token, String phone) async {
  // Add your function code here!
  // Get a reference your Supabase client
  final supabase = Supabase.instance.client;
  try {
    // veify if the otp was correct
    final AuthResponse res = await supabase.auth.verifyOTP(
      type: OtpType.sms,
      token: token,
      phone: phone,
    );

    // return true if session is not null (i.e. user has signed in)
    return res.session != null;
  }

  // print any errors in the console and return false
  on AuthException catch (error) {
    print(error.message);
    return false;
  } catch (error) {
    print(error);
    return false;
  }
}
