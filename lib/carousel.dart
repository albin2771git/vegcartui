import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Carousel extends StatelessWidget {
  List imgs = [
    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://media.istockphoto.com/id/1127360519/vector/organic-ingredients-green-leaf-label-stamp-vector-icon-vegan-food-or-nature-ingredients.jpg?s=612x612&w=0&k=20&c=zOaNNlxNHnPVlKX4vRgJNFlaMWoP1ktlPW-sDKpty44=',
  ];

  //const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 4,
        itemBuilder: ((context, index, realIndex) {
          return Container(
            width: 400,
            margin: EdgeInsets.all(6),
            child: Image.network(
              imgs[index],
              fit: BoxFit.cover,
            ),
          );
        }),
        options: CarouselOptions(
            enlargeCenterPage: true,
            height: 180,
            autoPlay: true,
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            autoPlayAnimationDuration: Duration(microseconds: 1000)));
  }
}
