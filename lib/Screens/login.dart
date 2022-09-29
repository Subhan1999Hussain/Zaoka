import 'package:first_app/Widget/app-logo.dart';
import 'package:first_app/Widget/backgroundimage.dart.dart';
import 'package:first_app/Widget/customappbar.dart';
import 'package:first_app/Widget/custombottomcontainer.dart';
import 'package:first_app/Widget/custombutton.dart';
import 'package:first_app/Widget/customtextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      Child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomeAppBar(
          title: "LOGIN",
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                sizedbox(30.0),
                //const SizedBox(height: 30.0),
                AppLogo(),
                const SizedBox(height: 20.0),
                const CustomTextField(
                  prefxicon: Icon(Icons.email_rounded),
                  hint: 'Asha Rathor',
                  label: 'Email Address',
                ),
                const SizedBox(height: 10.0),
                const CustomTextField(
                  prefxicon: Icon(Icons.lock),
                  hint: '********',
                  label: 'Password',
                ),
                const SizedBox(height: 60.0),
                const Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 30.0),
                const CustomButton(),
                const SizedBox(height: 60.0),
                const CustomBottomContainer(
                  bottomtext: "Don't have account?",
                  bottomboldtext: "Signup",
                ),
              ],
            ),
          ),
        ),
      ),
    );
    /*  AppTemplate(
        conChild: Container(
      child: Column(
        children: [
          //CustomAppBar(),
          SizedBox(
            height: 30.0,
          ),
          Image.asset(
            'assets/assets/images/logo.png',
            height: 150.0,
            width: 150.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomTextField(
            prefxicon: Icon(Icons.email_rounded),
            hint: 'Asha Rathor',
            label: 'Email Address',
          ),
          SizedBox(
            height: 10.0,
          ),
          CustomTextField(
            prefxicon: Icon(Icons.lock),
            hint: '********',
            label: 'Password',
          ),
          SizedBox(
            height: 60.0,
          ),
          Text(
            'Forget Password?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          CustomButton(),
          SizedBox(
            height: 60.0,
          ),
          CustomBottomContainer(
            bottomtext: "Don't have account?",
            bottomboldtext: "Signup",
          ),
        ],
      ),
    ));
    */
  }

  Widget sizedbox(double height) {
    return SizedBox(height: height);
  }
}
