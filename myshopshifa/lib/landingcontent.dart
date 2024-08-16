import 'landing.dart';

class LandingContent{

  List<Landing> items = [
    Landing(
        title: "Get Discount",
        description: "Get exclusive discounts today start from 25% up to 75% and choose clothes, accessories, and shoes that suit your style",
        image: "./lib/assets/slide1.png"),

    Landing(
        title: "New Arrivals",
        description: "Discover the latest trends and special offers only at our Fashion Store. Don't miss the chance to look stylish with special discounts.",
        image: "./lib/assets/slide2.png"),

    Landing(
        title: "Easy to Shop",
        description: "We show the easy way to shop, just stay at home with us. Everything is easier with online payment",
        image: "./lib/assets/slide3.png"),
  ];
 }



// import 'package:flutter/material.dart';
// import 'package:myshopshifa/content_model.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// import 'package:myshopshifa/productlist.dart';

// class Onbording extends StatefulWidget {
//   const Onbording({super.key});

//   @override
//   State<Onbording> createState() => _OnbordingState();
// }

// class _OnbordingState extends State<Onbording> {
//   int currentPage = 0;
//   List<Map<String, String>> splashData = [
//     {
//       "text": "Welcome to Tokoto, Let’s shop!",
//       "image": "./lib/assets/slide1.png"
//     },
//     {
//       "text":
//           "We help people conect with store \naround United State of America",
//       "image": "./lib/assets/slide2.png"
//     },
//     {
//       "text": "We show the easy way to shop. \nJust stay at home with us",
//       "image": "./lib/assets/slide3.png"
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SizedBox(
//           width: double.infinity,
//           child: Column(
//             children: <Widget>[
//               Expanded(
//                 flex: 3,
//                 child: PageView.builder(
//                   onPageChanged: (value) {
//                     setState(() {
//                       currentPage = value;
//                     });
//                   },
//                   itemCount: splashData.length,
//                   itemBuilder: (context, index) => SplashContent(
//                     image: splashData[index]["image"],
//                     text: splashData[index]['text'],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     children: <Widget>[
//                       const Spacer(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List.generate(
//                           splashData.length,
//                           (index) => AnimatedContainer(
//                             duration: kAnimationDuration,
//                             margin: const EdgeInsets.only(right: 5),
//                             height: 6,
//                             width: currentPage == index ? 20 : 6,
//                             decoration: BoxDecoration(
//                               color: currentPage == index
//                                   ? kPrimaryColor
//                                   : const Color(0xFFD8D8D8),
//                               borderRadius: BorderRadius.circular(3),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Spacer(flex: 3),
//                       ElevatedButton(
//                         onPressed: () {
//                           MaterialPageRoute(builder: (context) => ProductList());
//                         },
//                         child: const Text("Continue"),
//                       ),
//                       const Spacer(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }