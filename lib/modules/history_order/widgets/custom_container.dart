import 'package:flutter/material.dart';

class CustomOrderContainer extends StatelessWidget {
  late String orderNo;
  late String name;
  late String date;
  late String amount;
  late String price;
  late String image;

  CustomOrderContainer({
    required this.orderNo,
    required this.name,
    required this.date,
    required this.amount,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        //  width: MediaQuery.of(context).size.width * .15,
        height: MediaQuery.of(context).size.width * .48,

        // height: 150,
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      child: Row(
                        children: [
                          Text(
                            orderNo,
                            style: TextStyle(
                              color: Colors.red[400],
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.orange[400],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.orange[200],
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      amount,
                      style: TextStyle(
                        color: Colors.orange[200],
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        color: Colors.orange[400],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 85,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'PENDING.. ',
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.orange[400]),
                  ),
                ),
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
        ));
  }
}
