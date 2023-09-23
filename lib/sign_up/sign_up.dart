import 'package:flutter/material.dart';
import 'package:flutter_widgets/component/my_button.dart';
import 'package:flutter_widgets/component/my_iconbutton.dart';
import 'package:flutter_widgets/component/my_textbutton.dart';
import 'package:flutter_widgets/component/my_textfield.dart';
import 'package:flutter_widgets/sign_in/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  void signUpUser() async {
    if (firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        rePasswordController.text.isNotEmpty) {
      if (passwordController.text == rePasswordController.text) {
        print('Sign up: ${firstNameController.text}, ${lastNameController.text}, ${emailController.text}');
      } else {
        print('Passwords do not match');
      }
    } else {
      print('Please fill in all required fields');
    }
  }

  void navigateToSignIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle inputTextStyle = TextStyle(fontSize: 16);
    final InputDecoration inputDecoration = InputDecoration(
      labelText: 'First Name',
      hintText: 'Enter your first name',
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Create an Account",
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Sign up with your name, email, and password.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: firstNameController,
                  hintText: 'Enter your first name',
                  labelText: 'First Name',
                  secureText: false,
                  textStyle: inputTextStyle,
                  inputDecoration: inputDecoration,
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: lastNameController,
                  hintText: 'Enter your last name',
                  labelText: 'Last Name',
                  secureText: false,
                  textStyle: inputTextStyle,
                  inputDecoration: inputDecoration.copyWith(
                    labelText: 'Last Name',
                    hintText: 'Enter your last name',
                  ),
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: emailController,
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  secureText: false,
                  textStyle: inputTextStyle,
                  inputDecoration: InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  secureText: true,
                  textStyle: inputTextStyle,
                  inputDecoration: InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: rePasswordController,
                  hintText: 'Re-enter your password',
                  labelText: 'Re-enter Password',
                  secureText: true,
                  textStyle: inputTextStyle,
                  inputDecoration: InputDecoration(
                    hintText: 'Re-enter your password',
                    labelText: 'Re-enter Password',
                  ),
                ),
                const SizedBox(height: 25),
                MyButton(
                  onTap: signUpUser,
                  hinText: 'Sign Up',
                ),
                const SizedBox(height: 25),
                Divider(
                  thickness: 0.5,
                  color: Colors.green,
                ),
                const SizedBox(height: 20),
                Text(
                  'Or continue with',
                  style: TextStyle(color: Colors.yellowAccent.shade700),
                ),
                const SizedBox(height: 20),
                Divider(
                  thickness: 0.5,
                  color: Colors.green,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyIconButton(imagePath: 'lib/assets/image/Facebook.png'),
                    SizedBox(width: 10),
                    MyIconButton(imagePath: 'lib/assets/image/Google.png'),
                  ],
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member? ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    MyTextButton(
                      labelText: 'Sign in',
                      pageRoute: 'signin',
                      onTap: () => navigateToSignIn(context),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
