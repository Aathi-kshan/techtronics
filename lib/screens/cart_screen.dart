import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  // Dummy cart items for demonstration
  final List<CartProduct> cartItems = [
    CartProduct('Google Pixel 7 128GB', 'Rs.122,990.00', 'assets/images/pro1.jpeg', 1),
    CartProduct('Apple iPhone 14', 'Rs.149,990.00', 'assets/images/jbl.jpeg', 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping Cart',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: cartItems.isEmpty
            ? Center(child: Text('Your cart is empty', style: TextStyle(fontSize: 18)))
            : Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return _buildCartItem(cartItems[index]);
                },
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Total: ${_calculateTotal()}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to checkout
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              child: Text(
                'Proceed to Checkout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build a single cart item
  Widget _buildCartItem(CartProduct product) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              product.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    product.price,
                    style: TextStyle(color: Colors.brown),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Quantity: ${product.quantity}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () {
                // Remove item from cart functionality
              },
            ),
          ],
        ),
      ),
    );
  }

  // Method to calculate total price of items in cart
  String _calculateTotal() {
    double total = cartItems.fold(0, (sum, item) => sum + (double.parse(item.price.replaceAll('Rs.', '').replaceAll(',', '')) * item.quantity));
    return 'Rs.${total.toStringAsFixed(2)}';
  }
}

class CartProduct {
  final String name;
  final String price;
  final String imageUrl;
  final int quantity;

  CartProduct(this.name, this.price, this.imageUrl, this.quantity);
}
