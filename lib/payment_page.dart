import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final String fullName;
  final String email;
  final int totalRoom;
  final int totalNight;
  final int productPrice;

  PaymentPage({
    required this.fullName,
    required this.email,
    required this.totalRoom,
    required this.totalNight,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    int totalPrice = totalRoom * totalNight * productPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        color: Colors.blue[50], 
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text(
              "Payment Information", 
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 20), 
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Full Name: $fullName",
                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Email: $email",
                    style: TextStyle(fontSize: 18, color:const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Total Room: $totalRoom",
                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Total Night: $totalNight",
                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Price per Night: Rp. $productPrice",
                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Total Price: Rp. $totalPrice",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red[700],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Payment Successful!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[300],
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                ),
                child: Text(
                  "Proceed to Payment",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
