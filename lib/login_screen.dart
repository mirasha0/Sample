import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'forget_password.dart';
import 'globel/constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _LoginState extends State<Login> {
  bool _isObscure3 = true;
  bool visible = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double relativeWidth = size.width / Constants.referenceWidth;
    double relativeHeight = size.height / Constants.referenceHeight;

    // Widget for the Login button
    final loginButton = Material(
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      color: const Color(0xFF1FCC79),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(160, 0, 160, 0),
        height: 56,
        onPressed: () {
          // Add your login logic here
        },
        child: const Text(
          'Login',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.10,
          ),
        ),
      ),
    );

    // Widget for the Google login button
    final google = Material(
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      color: const Color(0xFFFF5842),
      child: MaterialButton(
        elevation: 5.0,
        padding: const EdgeInsets.fromLTRB(140, 0, 140, 0),
        height: 60,
        onPressed: () {
          // Add your Google login logic here
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Google',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
                letterSpacing: 0.10,
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 160.0,
                  left: relativeWidth * 101,
                  right: relativeWidth * 101,
                ),
                child: const Text(
                  'Welcome Back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2D3D5C),
                    fontSize: 22,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0.07,
                    letterSpacing: 0.50,
                  ),
                ),
              ),

              // Description
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 25,
                  left: relativeWidth * 68,
                  right: relativeWidth * 68,
                ),
                child: const Text(
                  'Please enter your account here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF9FA5C0),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                    letterSpacing: 0.50,
                  ),
                ),
              ),

              // Email Input
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 60,
                  left: relativeWidth * 44.77,
                  right: relativeWidth * 44.34,
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Your Email',
                    hintStyle: const TextStyle(
                      color: Color(0xFF9FA5C0),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.10,
                    ),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Color(0xFF2E3E5C),
                    ),
                    enabled: true,
                    contentPadding: const EdgeInsets.only(
                      left: 14.0,
                      bottom: 5.0,
                      top: 13.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This Field Cannot be Empty";
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zAZ0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return "Please Enter a valid Email!!";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    emailController.text = value!;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),

              // Password Input
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 16,
                  left: relativeWidth * 44.77,
                  right: relativeWidth * 44.34,
                ),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: _isObscure3,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure3
                          ? Icons.visibility
                          : Icons.visibility_off),
                      color: const Color(0xFF9FA5C0),
                      onPressed: () {
                        setState(() {
                          _isObscure3 = !_isObscure3;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0xFF9FA5C0),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.10,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Color(0xFF2E3E5C),
                    ),
                    enabled: true,
                    contentPadding: const EdgeInsets.only(
                      left: 14.0,
                      bottom: 8.0,
                      top: 15.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  validator: (value) {
                    RegExp regex = RegExp(r'^.{6,}$');
                    if (value!.isEmpty) {
                      return "Password Cannot be Empty";
                    }
                    if (!regex.hasMatch(value)) {
                      return "Please Enter Valid Password min. 6 Character";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    passwordController.text = value!;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
              ),

              // Forgot Password
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 27.38,
                  left: relativeWidth * 191,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forgot password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF2D3D5C),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ),

              // Login Button
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 90,
                  left: relativeWidth * 10,
                  right: relativeWidth * 10,
                ),
                child: loginButton,
              ),

              // Continue with Google
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 24,
                  left: relativeWidth * 124,
                  right: relativeWidth * 124,
                ),
                child: const Text(
                  'Or continue with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF9FA5C0),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.11,
                    letterSpacing: 0.50,
                  ),
                ),
              ),

              // Google Button
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 24,
                  left: relativeWidth * 10,
                  right: relativeWidth * 10,
                  bottom: relativeHeight * 37,
                ),
                child: google,
              ),

              // Don't have an account?
              Padding(
                padding: EdgeInsets.only(
                  top: relativeHeight * 24,
                  left: relativeWidth * 0,
                  right: relativeWidth * 0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have any account?",
                      style: TextStyle(
                        color: Color(0xFF2D3D5C),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.11,
                        letterSpacing: 0.50,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: const Text(
                        'SignUp',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF1FCC79),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0.11,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
