import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myshoppingapp/components/custom_surfix_icon.dart';
import 'package:myshoppingapp/components/default_button.dart';
import 'package:myshoppingapp/components/form_error.dart';
import 'package:myshoppingapp/components/no_account_text.dart';
import 'package:myshoppingapp/components/social_card.dart';
import 'package:myshoppingapp/constants.dart';
import 'package:myshoppingapp/screens/forgot_password/forgot_password_screen.dart';
import '../../../../size_config.dart';
import 'sign_form.dart';

class SignBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password or continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                  ),
                   SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                  ),
                   SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                  ),
                ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                NoAccountText(),
              ],
            ),
          ),   
        ),
      ),
    );
  }
}

