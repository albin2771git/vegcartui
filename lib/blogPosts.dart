import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BlogPost extends StatelessWidget {
//  const BlogPost({super.key});
  List img = [
    'https://images.pexels.com/photos/1153369/pexels-photo-1153369.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1346347/pexels-photo-1346347.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/863977/pexels-photo-863977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];
  List name = [
    'Control Blood Pressure-',
    'Five Reasons Why Brocoli Shou-',
    'Five tips to prevent-',
  ];
  List minutes = ['3 months ago', '4 months ago', '4 months ago'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
            // border: Border.all(width: 1, color: Colors.grey)
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.network(
                  img[0],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(name[0]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(minutes[0]),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.green,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            //boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
            //border: Border.all(width: 1, color: Colors.grey)
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.network(
                  img[1],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(name[1]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(minutes[1]),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.green,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
            // border: Border.all(width: 1, color: Colors.grey)
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.network(
                  img[2],
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(name[2]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(minutes[2]),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.green,
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
