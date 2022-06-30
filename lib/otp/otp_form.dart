import 'package:firebase_setup/otp/otp_body.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: OtpBody(),
    );
  }
}
