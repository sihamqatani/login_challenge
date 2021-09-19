import 'package:flutter/material.dart';
import 'package:login_challenge/modules/history_order/widgets/custom_container.dart';
import 'package:login_challenge/modules/sign_up/widgets/custom_text_from_field.dart';

class HistoryOrderBody extends StatelessWidget {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Order '),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextView(
                controller: searchController,
                type: TextInputType.text,
                onSubmit: (value) {},
                label: 'search  your  order',
                prefix: Icons.search),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                //itemExtent: 40,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 1,
                        left: 6,
                        right: 6,
                      ),
                      child: CustomOrderContainer(
                        orderNo: '01',
                        name: 'Strawberry',
                        date: '10-9-2021',
                        amount: ' 1 Kilo',
                        price: '2 \$',
                        image: 'assets/images/strawberry.png',
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
