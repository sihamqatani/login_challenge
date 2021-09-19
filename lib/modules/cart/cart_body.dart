import 'package:flutter/material.dart';
import 'package:login_challenge/modules/cart/widgets/custom_cart_container.dart';
import 'package:login_challenge/modules/sign_up/widgets/custom_button_view.dart';

class CartBody extends StatelessWidget {
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
                  return CustomCartContainer(
                    image: 'assets/images/strawberry.png',
                    name: 'Strawberry',
                    price: '5\$',
                    amount: '3',
                    onTap: () {},
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
