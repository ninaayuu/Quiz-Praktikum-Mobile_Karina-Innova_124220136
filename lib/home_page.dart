import 'package:flutter/material.dart';
import 'profile_page.dart'; 
import 'product_detail_page.dart';


class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  final List<String> productImages = [
    'assets/images/hotel1.jpg', 
    'assets/images/hotel2.jpg', 
    'assets/images/hotel3.jpg', 
    'assets/images/hotel4.jpg', 
    'assets/images/hotel5.jpg', 
    'assets/images/hotel6.jpg', 
    'assets/images/hotel7.jpg', 
    'assets/images/hotel8.jpg', 
    'assets/images/hotel9.jpg', 
    'assets/images/hotel10.jpg', 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blue Doorz!"),
        backgroundColor: Colors.blue[200], 
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.white), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(username: username),
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.white, 
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome To Blue Doorz, $username!',
              style: TextStyle(fontSize: 18, color: Colors.blue[300]), 
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          productName: 'Blue Lagoon ${index + 1}',
                          productPrice: 500000,
                          productImage: productImages[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), 
                    ),
                    color: Colors.blue[50], 
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12), 
                            child: Image.asset(
                              productImages[index], 
                              width: double.infinity, 
                              fit: BoxFit.cover, 
                            ),
                          ),
                        ),
                        Text(
                          'Blue Lagoon ${index + 1}',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          'Harga : Rp. 500.000/night',
                          style: TextStyle(fontSize: 14, color: Colors.blue[300]), 
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
