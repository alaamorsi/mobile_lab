import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var userController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Login Screen App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text('CodePlayon',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: userController,
              decoration: const InputDecoration(
                  label: Text(
                    'User Name',
                  ),
                  border: OutlineInputBorder()),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Email is invalid';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                  label: Text(
                    'Password',
                  ),
                  border: OutlineInputBorder()),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Password is invalid';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forget Password',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Does not have an account?',style: TextStyle(fontSize: 17.0,),),
                TextButton(onPressed: (){}, child: Text('Sign in',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16.0),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
