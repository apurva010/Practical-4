import 'package:flutter/material.dart';
import 'package:practical4/constants/size_constant.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool val = false;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome Back",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "Continue to Signin!",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        SizedBox(
          height: displayHeight(context) * 0.05,
        ),
        Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).primaryColor,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFbc1c2b),
                      width: 2.5,
                    ),
                  ),
                  label: Text(
                    "Email",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter email";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              TextFormField(
                obscuringCharacter: '*',
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Theme.of(context).primaryColor,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFbc1c2b),
                      width: 2.5,
                    ),
                  ),
                  label: Text(
                    "Password",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password";
                  } else {
                    return null;
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: displayHeight(context) * 0.02),
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: displayHeight(context) * 0.01,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                    checkColor: Colors.white,
                    activeColor: Theme.of(context).primaryColor,
                    value: val,
                    onChanged: (v) {
                      setState(() {
                        if (v!) {
                          val = true;
                        } else {
                          val = false;
                        }
                      });
                    },
                  ),
                  const Text(
                    "Remember me and keep me logged in",
                    style: TextStyle(color: Colors.grey, fontSize: 16.5),
                  ),
                ],
              ),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    autofocus: true,
                    style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        SnackBar s = const SnackBar(
                          content: Text("Thank you for signin"),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(s);
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: displayWidth(context) * 0.327,
                        top: displayHeight(context) * 0.02,
                        right: displayWidth(context) * 0.327,
                        bottom: displayHeight(context) * 0.02,
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'quicksand',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xFFbc1c2b),
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
