import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 120,
              child: Image(
                image: AssetImage(
                  'assets\images\login1.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome Back !',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('Login to your exitant account of Q Allue',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(wordSpacing: 2)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                      // borderSide: BorderSide.none,
                      //borderSide: const BorderSide(),
                    ),
                    hintText: 'Siham@gmail.com',
                    hintStyle: TextStyle(color: Colors.red[200])),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock_outline, color: Colors.red[300],
                      // color: Colors.white,
                    ),
                    focusColor: Colors.red[300],
                    border: OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(90.0),
                      ),
                    ),
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.red[200])),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            color: Colors.red[200],
                            fontWeight: FontWeight.bold),
                      ))),
            ),
            Container(
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
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      print('Hello!');
                    })),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                'Or connect using',
                style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 14, wordSpacing: 1, color: Colors.grey[400]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      width: 100,
                      height: 30,
                      color: Colors.blueAccent,
                      //decoration: ShapeDecoration(
                      //  shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10)),
                      // ),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.facebook,
                              color: Colors.white),
                          label: Text(
                            'Facebook',
                            style: TextStyle(color: Colors.white),
                          ))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
