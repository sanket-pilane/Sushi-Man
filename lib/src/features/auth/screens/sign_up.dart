import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shushii_restarount_app/src/constants/constants.dart';
import 'package:shushii_restarount_app/src/features/auth/components/divider.dart';
import 'package:shushii_restarount_app/src/features/auth/components/square_tile.dart';
import 'package:shushii_restarount_app/src/features/auth/screens/login_page.dart';
import 'package:shushii_restarount_app/src/services/firebase_auth_methods.dart';
import 'package:shushii_restarount_app/src/widgets/custome_textfielad.dart';
import 'package:shushii_restarount_app/src/widgets/frosted_glass.dart';
import 'package:shushii_restarount_app/src/widgets/snackbar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  void signUpUser() async {
    if (passwordController.text == confirmPasswordController.text) {
      FirebaseAuthMethod(FirebaseAuth.instance).signUpUsingEmailPassword(
          email: usernameController.text,
          password: passwordController.text,
          context: context);
    } else {
      showSnackBar(context, "Confirm password and password must be same");
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // color: kPrimaryColor,
          image: DecorationImage(
            image: AssetImage(kBgImage),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: FrostedGlassBox(
            theWidth: width * 0.9,
            theHeight: height * 0.7,
            theChild: loginMethod(context)),
      ),
    );
  }

  Column loginMethod(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Icon(
          Icons.lock,
          color: Colors.white,
          size: 60,
        ),
        CustomeTextField(
          hintText: "Username",
          icon: Icon(Icons.person),
          controller: usernameController,
        ),
        CustomeTextField(
          hintText: "Password",
          icon: Icon(Icons.lock),
          controller: passwordController,
          obscureText: true,
        ),
        CustomeTextField(
          hintText: "Cofirm password",
          icon: Icon(Icons.check_circle),
          controller: confirmPasswordController,
          obscureText: true,
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () => signUpUser(),
          child: Container(
            width: width * 0.7,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CustomeDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () => showSnackBar(context, "Google"),
                child: SquareTile(logo: kGoogleImage)),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: () => showSnackBar(context, "FaceBook"),
                child: SquareTile(logo: kFbImage)),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an Account?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                )),
                child: Text(
                  "Login Here",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
