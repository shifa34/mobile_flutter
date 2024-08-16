// import 'package:flutter/material.dart';

// class CartScreen extends StatefulWidget {
//   const CartScreen({super.key});

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           children: [
//             const Text(
//               "Your Cart",
//               style: TextStyle(color: Colors.black),
//             ),
//             Text(
//               "${demoCarts.length} items",
//               style: Theme.of(context).textTheme.bodySmall,
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: ListView.builder(
//           itemCount: demoCarts.length,
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Dismissible(
//               key: Key(demoCarts[index].product.id.toString()),
//               direction: DismissDirection.endToStart,
//               onDismissed: (direction) {
//                 setState(() {
//                   demoCarts.removeAt(index);
//                 });
//               },
//               background: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFFFE6E6),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Row(
//                   children: [
//                     const Spacer(),
//                     SvgPicture.asset("assets/icons/Trash.svg"),
//                   ],
//                 ),
//               ),
//               child: CartCard(cart: demoCarts[index]),
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: const CheckoutCard(),
//     );
//     );
//   }
// }