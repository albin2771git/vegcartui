import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(children: [
          Column(
            children: [
              Text(
                "We Are Working towards safe food -\n which are Nutri-Locked and hygienic as well",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "READ MORE",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        )),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 13,
                      color: Colors.green,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            width: 200,
            height: 200,
            child: Image.network(
              "https://images.pexels.com/photos/2611818/pexels-photo-2611818.jpeg?auto=compress&cs=tinysrgb&w=600",
              fit: BoxFit.cover,
            ),
          )
        ]),
      ),
    );
  }
}
