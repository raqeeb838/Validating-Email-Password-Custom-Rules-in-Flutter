import 'package:again_start_flutter/reusable/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FormPractice extends StatefulWidget {
  const FormPractice({super.key});

  @override
  State<FormPractice> createState() => _FormPracticeState();
}

class _FormPracticeState extends State<FormPractice> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Practice", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 100),
              SizedBox(height: 20),
              CustomTextField(
                controller: emailController,
                hintText: "Enter Your Email",
                prefixIcon: Icons.email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter your email";
                  }
        
                  if(!value.contains("@")){
                    return "inavalid email credentials";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: passwordController,
                hintText: "Enter Your Password",
                prefixIcon: Icons.lock,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Password";
                  }
                  if(value.length < 8){
                    return "weak password usiing special characters (@,#,*,%)";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                  ),
        
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                  child: Text("Login Now"),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("Forget Password?")),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Don't have an account? Register Now",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
