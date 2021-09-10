import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_challenge/modules/sign_up/widgets/custom_text_from_field.dart';

class HistoryOrder extends StatelessWidget {
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
                    child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                      child: Row(
                                        children: [
                                          Text(
                                            '01',
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
                                      ' Strawberry',
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
                                      '8-9-2021',
                                      style: TextStyle(
                                        color: Colors.orange[200],
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '1  kilo',
                                      style: TextStyle(
                                        color: Colors.orange[200],
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      '5 \$',
                                      style: TextStyle(
                                          color: Colors.orange[400],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cairo'),
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.orange[400]),
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
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
