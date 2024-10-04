import 'package:flutter/material.dart';
import 'payment_page.dart'; 

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final int productPrice;
  final String productImage;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController totalRoomController = TextEditingController();
  final TextEditingController totalNightController = TextEditingController();

  ProductDetailPage({
    required this.productName,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  productImage,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              productName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
  children: [
    Text(
      "Rating: ",
      style: TextStyle(fontSize: 16),
    ),
    Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
      ],
    ),
    Spacer(),
    Text(
      " Rp.${productPrice}/night",
      style: TextStyle(fontSize: 24, color: Colors.red[300]),
          ),
        ],
      ),

            SizedBox(height: 20),
            Text("Deskripsi Product: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(
                "Kamar hotel yang kami sediakan merupakan pilihan terbaik, yang memiliki beberapa fasilitas umum yang dapat digunakan oleh para pengunjung hotel seperti gym, kolam renang indoor & outdoor, spa massage, playground, taman, dan lainnya."),
            SizedBox(height: 40),
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: totalRoomController,
              decoration: InputDecoration(
                labelText: 'Total Room',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            TextField(
              controller: totalNightController,
              decoration: InputDecoration(
                labelText: 'Total Night',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(
                      fullName: fullNameController.text,
                      email: emailController.text,
                      totalRoom: int.parse(totalRoomController.text),
                      totalNight: int.parse(totalNightController.text),
                      productPrice: productPrice,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[300],
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              ),
              child: Text(
                "Payment",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
