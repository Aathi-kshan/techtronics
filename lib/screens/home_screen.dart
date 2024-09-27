// import 'package:flutter/material.dart';
// import 'cart_screen.dart'; // Import the CartScreen
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Tech Tronics Home',
//           style: TextStyle(color: Colors.white), // AppBar title color set to white
//         ),
//         backgroundColor: Colors.black,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart, color: Colors.white), // Icon color set to white
//             onPressed: () {
//               // Navigate to CartScreen
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => CartScreen()),
//               );
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.menu, color: Colors.white), // Icon color set to white
//             onPressed: () {
//               // Menu functionality
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Header banner or promo section
//             Container(
//               padding: EdgeInsets.all(16.0),
//               color: Colors.black, // Changed container background to black
//               child: Image.asset(
//                 'assets/images/home.jpeg', // Replace with your banner image URL
//                 fit: BoxFit.cover,
//               ),
//             ),
//             // "Featured Products" section title
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
//               child: Text(
//                 "Featured Products",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black, // Text color set to black
//                 ),
//               ),
//             ),
//             // Multiple product display section for "Featured Products"
//             _buildProductGrid([
//               Product(
//                 'Google Pixel 7 128GB', // Product name
//                 'Rs.122,990.00', // Product price
//                 'assets/images/pro1.jpeg', // Product image URL
//               ),
//               Product(
//                 'Apple iPhone 14', // Product name
//                 'Rs.149,990.00', // Product price
//                 'assets/images/jbl.jpeg', // Product image URL
//               ),
//               Product(
//                 'Samsung Galaxy S22 Ultra', // Product name
//                 'Rs.184,990.00', // Product price
//                 'assets/images/phn.jpeg', // Product image URL
//               ),
//               Product(
//                 'Sony WH-1000XM4', // Product name
//                 'Rs.34,990.00', // Product price
//                 'assets/images/sam.jpeg', // Product image URL
//               ),
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Method to build a grid layout for featured products
//   Widget _buildProductGrid(List<Product> products) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8.0),
//       child: GridView.builder(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside GridView
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // Number of columns in the grid
//           crossAxisSpacing: 8.0, // Spacing between columns
//           mainAxisSpacing: 8.0, // Spacing between rows
//           childAspectRatio: 0.75, // Aspect ratio of each grid item
//         ),
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return _buildSingleProduct(products[index], context);
//         },
//       ),
//     );
//   }
//
//   // Method to build a single product display for "Featured Products"
//   Widget _buildSingleProduct(Product product, BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         color: Colors.grey[200], // Light grey background color
//       ),
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           Image.asset(
//             product.imageUrl,
//             width: 120,
//             height: 120,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 20.0),
//           Text(
//             product.name,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 10,
//               color: Colors.black,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             product.price,
//             style: TextStyle(
//               color: Colors.brown,
//               fontWeight: FontWeight.bold,
//               fontSize: 10,
//             ),
//           ),
//           SizedBox(height: 8.0),
//           ElevatedButton(
//             onPressed: () {
//               // Navigate to product description page
//               if (product.name == 'Google Pixel 7 128GB') {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ProductDescriptionScreen(),
//                   ),
//                 );
//               } else {
//                 // Add to Cart functionality for other products
//               }
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.brown, // Button color set to brown
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(5.0),
//               ),
//             ),
//             child: Text(
//               'View Details',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Product {
//   final String name;
//   final String price;
//   final String imageUrl;
//
//   Product(this.name, this.price, this.imageUrl);
// }
//
// // New Product Description Screen
// class ProductDescriptionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Product Details',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               'assets/images/pro1.jpeg', // Product image
//               fit: BoxFit.cover,
//               height: 350,
//               width: double.infinity,
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Google Pixel 7 128GB',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Rs.122,990.00',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.brown,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'The Google Pixel 7 is the latest smartphone from Google, featuring a stunning display, advanced camera capabilities, and seamless integration with Google services.',
//               style: TextStyle(fontSize: 16, color: Colors.black),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Add to Cart functionality
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.brown, // Button color set to brown
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//               child: Text(
//                 'Add to Cart',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'cart_screen.dart'; // Import the CartScreen
import 'profile_screen.dart'; // Import the ProfileScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tech Tronics Home',
          style: TextStyle(color: Colors.white), // AppBar title color set to white
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white), // Icon color set to white
            onPressed: () {
              // Navigate to CartScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white), // User icon color set to white
            onPressed: () {
              // Navigate to ProfileScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header banner or promo section
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.black, // Changed container background to black
              child: Image.asset(
                'assets/images/home.jpeg', // Replace with your banner image URL
                fit: BoxFit.cover,
              ),
            ),
            // "Featured Products" section title
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Text(
                "Featured Products",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color set to black
                ),
              ),
            ),
            // Multiple product display section for "Featured Products"
            _buildProductGrid([
              Product(
                'Google Pixel 7 128GB', // Product name
                'Rs.122,990.00', // Product price
                'assets/images/pro1.jpeg', // Product image URL
              ),
              Product(
                'Apple iPhone 14', // Product name
                'Rs.149,990.00', // Product price
                'assets/images/jbl.jpeg', // Product image URL
              ),
              Product(
                'Samsung Galaxy S22 Ultra', // Product name
                'Rs.184,990.00', // Product price
                'assets/images/phn.jpeg', // Product image URL
              ),
              Product(
                'Sony WH-1000XM4', // Product name
                'Rs.34,990.00', // Product price
                'assets/images/sam.jpeg', // Product image URL
              ),
            ]),
          ],
        ),
      ),
    );
  }

  // Method to build a grid layout for featured products
  Widget _buildProductGrid(List<Product> products) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside GridView
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
          childAspectRatio: 0.75, // Aspect ratio of each grid item
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return _buildSingleProduct(products[index], context);
        },
      ),
    );
  }

  // Method to build a single product display for "Featured Products"
  Widget _buildSingleProduct(Product product, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200], // Light grey background color
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            product.imageUrl,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          Text(
            product.price,
            style: TextStyle(
              color: Colors.brown,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // Navigate to product description page
              if (product.name == 'Google Pixel 7 128GB') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDescriptionScreen(),
                  ),
                );
              } else {
                // Add to Cart functionality for other products
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown, // Button color set to brown
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Text(
              'View Details',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String imageUrl;

  Product(this.name, this.price, this.imageUrl);
}

// New Product Description Screen
class ProductDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/pro1.jpeg', // Product image
              fit: BoxFit.cover,
              height: 350,
              width: double.infinity,
            ),
            SizedBox(height: 16.0),
            Text(
              'Google Pixel 7 128GB',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Rs.122,990.00',
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'The Google Pixel 7 is the latest smartphone from Google, featuring a stunning display, advanced camera capabilities, and seamless integration with Google services.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add to Cart functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown, // Button color set to brown
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              child: Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
