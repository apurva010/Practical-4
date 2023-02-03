import 'package:flutter/material.dart';
import 'package:practical4/constants/size_constant.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool val = false;

  final _formkey = GlobalKey<FormState>();

  TextEditingController pass = TextEditingController();
  TextEditingController rePass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "Continue to Signup!",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        SizedBox(
          height: displayHeight(context) * 0.03,
        ),
        Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
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
                    "Name",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter name";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
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
                controller: pass,
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
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              TextFormField(
                obscuringCharacter: '*',
                controller: rePass,
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
                    "Retype-Password",
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
              const SizedBox(
                height: 10,
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
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "By signing up you agree to our",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                        TextSpan(
                          text: "\n terms & conditions and policy",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
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
                        if (pass.text.toString() == rePass.text.toString()) {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed('/signin');
                        } else {
                          SnackBar s = const SnackBar(
                            content: Text("Password must be same"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(s);
                        }
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: displayWidth(context) * 0.32,
                        top: displayHeight(context) * 0.02,
                        right: displayWidth(context) * 0.32,
                        bottom: displayHeight(context) * 0.02,
                      ),
                      child: const Text(
                        "Sign Up",
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
                    "Have an Account?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/signin');
                    },
                    child: const Text(
                      "Sign In",
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
