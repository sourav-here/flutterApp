import 'package:flutter/material.dart';
import 'homescreen.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // final String _validUsername = "sourav";
  // final String _validPassword = "123";
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void login(BuildContext context) {
    final _validUsername = _usernameController.text;
    final _validPassword = _passwordController.text;

    if (_validUsername == 'sourav' && _validPassword == '123') {
      Navigator.of(context as BuildContext).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      final message = "Incorrect Credentials";
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(message),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'),
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: Text('Login Screen'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height:height*0.04),
                Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 40, color: Colors.deepPurple),
                ),
                Text(" ",
                    style: TextStyle(
                      fontSize: 50,
                    )),

                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _usernameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(
                            width: 10, color: Colors.lightGreenAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Username'),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return 'Please enter your username';
                  //   }
                  //   return null;
                  // },

                  // validator: (value){
                  //   if(value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value!)){
                  //     return "Enter correct number";
                  //   }else{
                  //     return null;
                  //   }
                  // },
                  validator: (_usernameController) {
                    if (_usernameController == null ||
                        _usernameController.isEmpty) {
                      return 'Please enter a username';
                    } else if (_usernameController != _usernameController) {
                      return 'Invalid username';
                    }

                    // else{

                    //   showDialog(
                    //         context: context,
                    //         builder: (context) => AlertDialog(
                    //           title: Text('Incorrect Credentials'),
                    //           content: Text(
                    //               'Please enter correct password.'),
                    //           actions: [
                    //             ElevatedButton(
                    //               onPressed: () {
                    //                 Navigator.pop(context);
                    //               },
                    //               child: Text('OK'),
                    //             ),
                    //           ],
                    //         ),
                    //       );

                    // }
                    //

                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _passwordController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(
                            width: 10, color: Colors.lightGreenAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Password'),
                  // validator: (value) {
                  //   if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value! )) {
                  //     return 'Please enter your password';
                  //   }
                  //   return null;
                  // },
                  validator: (passwordController) {
                    if (passwordController!.isEmpty) {
                      return 'Please enter your password';
                    }
                    // else if (passwordController != _validPassword) {
                    //    return 'Incorrect password';
                    //     }
                    // else{
                    //   showDialog(
                    //     context: context,
                    //     builder: (context) => AlertDialog(
                    //       title: Text('Incorrect Credentials'),
                    //       content: Text(
                    //           'Please enter correct username.'),
                    //       actions: [
                    //         ElevatedButton(
                    //           onPressed: () {
                    //             Navigator.pop(context);
                    //           },
                    //           child: Text('OK'),
                    //         ),
                    //       ],
                    //     ),
                    //   );
                    // }

                    return null;
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // _formKey.currentState!.validate();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const HomePage()),
                    // );

                    if (_formKey.currentState!.validate()) {
                      login(context);

                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => HomePage()),
                      // );
                    }
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 25, color: Colors.black),
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
