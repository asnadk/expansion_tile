import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile Card'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ExpansionTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(cars[index].image),
              ),
              title: Text(cars[index].name),
              subtitle: Text('Price: ₹${cars[index].price.toString()}'),
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Cars {
  String name;
  String image;
  double price;

  Cars({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<Cars> cars = [
  Cars(
    image:
        "https://i.pinimg.com/236x/b9/e7/4b/b9e74b226d563e1a27269b419a12aad8.jpg",
    name: "MERCEDEZ",
    price: 3000000,
  ),
  Cars(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT74th1TE93zb-g-jsNb9lsBG6RqCnMYB_6u8U6H6I1wSsncHmTu1_Q-_xe0VtD0V389zM&usqp=CAU",
    name: "BMW",
    price: 7500000,
  ),
  Cars(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh4iPu5EaSyVbmqd9lGH37cvEZKDGl1Juxp8lNzPt2z0zzjMi1SvZKLGpmqmDiymPXa3Y&usqp=CAU",
    name: "TOYOTA",
    price: 6500000,
  ),
   Cars(
    image:
        "https://cloudfront-us-east-2.images.arcpublishing.com/reuters/BU5GNWHD5ROCREGDMPKS7AS6II.jpg",
    name: "FORD",
    price:800000 ,
  ),
   Cars(
    image:
        "https://uploads.vw-mms.de/system/production/images/cws/076/989/images/f8eaa444d44903804aba06df2f5fb4e0bccf73ca/B2023CW00515_web_1600.jpg?1685456378",
    name: "LAMBOGHINI",
    price: 150000000,
  ),
  Cars(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2qS7sKfoXNSjbh6_AJDaIzORqM9lCdIoVDP3CGCcA9Aec5DJT9zwHPogg5IU8grza_5s&usqp=CAU",
    name: "NISSAN",
    price:3500000 ,
  ),
];