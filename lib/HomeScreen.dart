import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vegcartui/blogPosts.dart';
import 'package:vegcartui/carousel.dart';
import 'package:vegcartui/imageContainer.dart';
import 'package:vegcartui/review.dart';
import 'package:vegcartui/sellingproduct.dart';
import 'package:vegcartui/vegGrid.dart';

class HomeScreen extends StatefulWidget {
  List imgs = [
    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://media.istockphoto.com/id/1127360519/vector/organic-ingredients-green-leaf-label-stamp-vector-icon-vegan-food-or-nature-ingredients.jpg?s=612x612&w=0&k=20&c=zOaNNlxNHnPVlKX4vRgJNFlaMWoP1ktlPW-sDKpty44=',
  ];

  //const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(Icons.location_on),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Text("Kochi"),
              )
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(23)),
                child: Center(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search For Vegitables And Fruits.....",
                      prefixIcon: Icon(Icons.search)),
                )),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(child: Text("VEGITABLES")),
                ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(child: Text("FRUITS")),
                ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(child: Text("EXOTIC")),
                ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Center(child: Text("FRESH CUTS")),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Carousel(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("30 mins ploicy")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.camera_front_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Traceability")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.home_work,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Local Surrounding")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Shop By Category",
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            VegGrid(),
            Divider(),
            Container(
              height: 160,
              padding: EdgeInsets.all(10),
              child: Image.network(
                "https://images.pexels.com/photos/3669640/pexels-photo-3669640.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "best selling products",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SellingProduct(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey)),
                height: 40,
                child: Center(
                    child:
                        TextButton(onPressed: () {}, child: Text("VIEW MORE"))),
              ),
            ),
            Divider(),
            ImageContainer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Our Blog Posts",
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            BlogPost(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey)),
                height: 40,
                child: Center(
                    child:
                        TextButton(onPressed: () {}, child: Text("VIEW MORE"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "What Our Customer Says?",
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ReviewSWcreen(),
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        currentIndex: 0,
        selectedIconTheme: IconThemeData(color: Colors.green),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                //  color: Colors.black,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                //  color: Colors.black,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}
