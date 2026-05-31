import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool obsecure = true;

  void reset(){
    nameController.clear();
    phoneController.clear();
    emailController.clear();
    passwordController.clear();

    formkey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form Validation",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Your Name",
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: IconButton(onPressed: (){
                    nameController.clear();
                  }, icon: Icon(Icons.clear)),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                  
                  return null;
                },
              ),

              SizedBox(height: 15),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "Enter Your Phone Number",
                  labelText: "Your Number",
                  prefixIcon: Icon(Icons.numbers),
                    suffixIcon: IconButton(onPressed: (){
                    phoneController.clear();
                  }, icon: Icon(Icons.clear)),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your phone";
                  }
                  if (value.length != 11 ){
                    return "phone number must be 11 characters";
                  }

                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "Your Email",
                  prefixIcon: Icon(Icons.email),
                    suffixIcon: IconButton(onPressed: (){
                    emailController.clear();
                  }, icon: Icon(Icons.clear)),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }

                  if(!value.contains("@")){
                    return "invalid email address";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: passwordController,
                obscureText: obsecure,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "Your Password",
                  border: OutlineInputBorder(borderSide: BorderSide(width: 3)),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obsecure = !obsecure;
                      });
                    },
                    icon: obsecure? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                  if(value.length < 8){
                    return "password must be 8 characters";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    print('Name:${nameController.text}');
                    print('Phone:${phoneController.text}');
                    print('Email:${emailController.text}');
                    print('Password:${passwordController.text}');

                    reset();
                  }
                },
                child: Text("Register Now"),

                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
