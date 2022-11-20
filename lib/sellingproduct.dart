import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SellingProduct extends StatelessWidget {
//  const SellingProduct({super.key});
  List img = [
    'https://images.pexels.com/photos/1306559/pexels-photo-1306559.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/4839985/pexels-photo-4839985.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3872368/pexels-photo-3872368.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/5966630/pexels-photo-5966630.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];
  List name = [
    'Carrot',
    'Salad Verde',
    'Broccoli Florets 200gm',
    'Banana Nendran-semi',
  ];
  List price = [
    '49',
    '129',
    '119',
    '41',
  ];
  List quatity = [
    '0.50 kg',
    '1.00 box',
    '1.00 box',
    '1.00 kg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: img.length,
        itemBuilder: (BuildContext, int index) {
          return Container(
            decoration: BoxDecoration(color: Colors.white,
                //  borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(img[index])),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          name[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child:
                            Row(children: [Text("Price:"), Text(price[index])]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 05, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(quatity[index]),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 15,
                              ),
                              child: Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(color: Colors.green),
                                child: Center(
                                    child: Text(
                                  "ADD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
