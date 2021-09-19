import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCartContainer extends StatelessWidget {
  late String name;
  late String image;
  late String price;
  late String amount;
  void Function() onTap;

  CustomCartContainer({
    required this.name,
    required this.image,
    required this.price,
    required this.onTap,
    required this.amount,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1, left: 6, right: 6, top: 8),
      child: Container(
          height: 105,
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,

                    /// width: 45,
                    width: MediaQuery.of(context).size.width * .15,
                    height: MediaQuery.of(context).size.width * .30,
                    //height: 85,
                    // height: 85,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange[50]!),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          amount,
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
                            onTap: onTap,
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
                            image: AssetImage(image), fit: BoxFit.cover)),
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
                          name,
                          style: TextStyle(
                            color: Colors.orange[400],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 11.0),
                        child: Text(
                          price,
                          style: TextStyle(
                            color: Colors.orange[600],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
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
  }
}
