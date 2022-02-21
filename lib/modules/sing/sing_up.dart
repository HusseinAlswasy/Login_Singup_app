
import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('WELCOME')),
      ),

      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                    'SING UP',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText:'Name',
                  hintText:'Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText:'Email',
                  hintText:'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration: const InputDecoration(
                  labelText:'Password',
                  hintText:'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: confirmController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                onFieldSubmitted: (value){
                  print(value);
                },
                decoration:const InputDecoration(
                  labelText:'Confirm password',
                  hintText: 'Confirm password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                height: 50,
                child: MaterialButton(
                  onPressed: (){
                  print(nameController.text);
                  print(emailController.text);
                  print(passwordController.text);
                  print(confirmController.text);
                },
                  child: const Text(
                      'SING UP',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You Already have a account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
