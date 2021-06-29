import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    pin2FocusNode?.dispose();
    pin3FocusNode?.dispose();
    pin4FocusNode?.dispose();
    // TODO: implement dispose
    super.dispose();

  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onChanged: (value)=> nextField((value), pin2FocusNode!),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15),),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: kTextColor)
                        )
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onChanged: (value)=>nextField((value), pin3FocusNode!),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15),),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: kTextColor)
                        )
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onChanged: (value)=> nextField((value), pin4FocusNode!),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15),),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: kTextColor)
                        )
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    onChanged: (value){
                      if(value.length == 1){
                        pin4FocusNode!.unfocus();
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15),),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: kTextColor)
                        )
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}