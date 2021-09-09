import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_challenge/modules/sign_up/widgets/custom_button_view.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Cart')),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 350,
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                //itemExtent: 40,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        bottom: 1, left: 6, right: 6, top: 8),
                    child: Container(
                        height: 105,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 45,
                                  height: 85,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Colors.orange[50]!),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: InkWell(
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          size: 17,
                                          color: Colors.orange[600],
                                        ),
                                        onTap: () {},
                                      )),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                          child: Text(
                                        '3',
                                        style: TextStyle(
                                          color: Colors.orange[900],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      )),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: InkWell(
                                          child: Icon(
                                            FontAwesomeIcons.minus,
                                            size: 17,
                                            color: Colors.orange[600],
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/strawberry.png'),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Strawberry',
                                        style: TextStyle(
                                            color: Colors.orange[400],
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Cairo'),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 11.0),
                                      child: Text(
                                        '5\$',
                                        style: TextStyle(
                                            color: Colors.orange[600],
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Cairo'),
                                      ),
                                    ),
                                  ],
                                ),
                                //SizedBox(width: 30,),
                                Expanded(
                                  child: GestureDetector(
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.cancel,
                                            color: Colors.deepOrange[100],
                                          )),
                                      onTap: () {}),
                                ),
                              ],
                            ),
                          ),
                        )),
                  );
                }),
          ),
          SizedBox(
            height: 1,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Cart total :',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      // alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .7,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange[50]!),
                          borderRadius: BorderRadius.circular(12)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '100 \$',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.orange[400],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomButtonView(
            text: 'Checkout Now',
            onPreesed: () {},
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
