import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/componance/Body.dart';
class CompleteProfile extends StatelessWidget {
  const CompleteProfile({Key? key}) : super(key: key);
  static String routName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
