import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Let\'s Get Started !',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('Creat an account to get all features',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(wordSpacing: 2)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange[100]!,
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  )
                ]),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrange[100]!,
                      blurRadius: 15,
                      offset: const Offset(0, 10),
                    )
                  ]),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person_outline, color: Colors.red[300],
                          // color: Colors.white,
                        ),
                        focusColor: Colors.red[300],
                        border: OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderRadius: BorderRadius.all(
                            Radius.circular(90.0),
                          ),
                          borderSide: BorderSide.none,
                          //borderSide: const BorderSide(),
                        ),
                        hintText: 'name',
                        hintStyle: TextStyle(color: Colors.red[200])),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange[100]!,
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  )
                ]),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email_outlined, color: Colors.red[300], size: 12,
                        // color: Colors.white,
                      ),
                      focusColor: Colors.red[300],
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        //BorderSide(width: 1, color: Colors.deepOrange[50]!),*/
                        borderRadius: BorderRadius.all(
                          Radius.circular(90.0),
                        ),
                      ),
                      hintText: 'Siham@gmail.com',
                      hintStyle: TextStyle(color: Colors.red[200])),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange[100]!,
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  )
                ]),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_outline, color: Colors.red[300],
                        // color: Colors.white,
                      ),
                      focusColor: Colors.red[300],
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(90.0),
                        ),
                      ),
                      hintText: 'password',
                      hintStyle: TextStyle(color: Colors.red[200])),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange[100]!,
                    blurRadius: 15,
                    offset: const Offset(0, 10),
                  )
                ]),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_open_outlined, color: Colors.red[300],
                        // color: Colors.white,
                      ),
                      focusColor: Colors.red[300],
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(90.0),
                        ),
                      ),
                      hintText: 'confirm password',
                      hintStyle: TextStyle(color: Colors.red[200])),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  width: 200,
                  height: 50,
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.orange],
                    ),
                  ),
                  child: MaterialButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: StadiumBorder(),
                      child: Text(
                        'Sign UP',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        print('Hello!');
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
