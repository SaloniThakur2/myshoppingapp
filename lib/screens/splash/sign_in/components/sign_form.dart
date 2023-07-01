import 'package:flutter/material.dart';
import 'package:myshoppingapp/components/custom_surfix_icon.dart';
import 'package:myshoppingapp/components/default_button.dart';
import 'package:myshoppingapp/components/form_error.dart';
import 'package:myshoppingapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:myshoppingapp/screens/home/home_screen.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildTextFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"), 
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context, ForgotPasswordScreen.routeName),
                child: Text("Forgot Password",
                style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()
                      )
                  );                
              }             
            },           
          ),
        ],    
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          onSaved: (newValue) => password = newValue,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(kPassNullError)) {
              setState(() {
                errors.remove(kPassNullError);
              });
              
            } else if (value.length >= 8 && 
            errors.contains(kShortPassError)) {
              setState(() {
                errors.remove(kShortPassError);
              });
              
            }
            return null;
          },
          validator: (value) {
            if (value.isEmpty && !errors.contains(kPassNullError)) {
              setState(() {
                errors.add(kPassNullError);
              });
              return "";
            } else if (value.length < 8 && 
            !errors.contains(kShortPassError)) {
              setState(() {
                errors.add(kShortPassError);
              });
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            // If you are using latest version of flutter then label text and hint text shown like
            //if you r using flutter less then 1.20.* then maybe this is not working properly
            
            suffixIcon: CustomSuffixIcon(
        svgIcon: "assets/icons/Lock.svg"
        ),
      ),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          onChanged: (value) {
           if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null; 
          },
          validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If you are using latest version of flutter then label text and hint text shown like
        //if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}

