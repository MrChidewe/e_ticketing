import 'package:flutter/material.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text('OTP Verification'),
          Text('We sent your code to +263 785185***'),
          //buildTimer(),
          OtpForm(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This code expires in '),
                TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0),
                  duration: Duration(seconds: 30), //user is given 3os
                  builder: (context, value, child) => Text(
                    '00:${value.toString()}',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  onEnd: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 40,
              child: TextFormField(
                style: TextStyle(fontSize: 24),
                decoration:
                    InputDecoration(enabledBorder: OutlineInputBorder()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
