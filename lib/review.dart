import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReviewSWcreen extends StatelessWidget {
  const ReviewSWcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            child: CircleAvatar(
              maxRadius: 35,
              minRadius: 15,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
