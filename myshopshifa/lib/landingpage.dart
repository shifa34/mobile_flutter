import 'package:flutter/material.dart';
import 'package:myshopshifa/landingcontent.dart';
import 'package:myshopshifa/productlist.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final controller = LandingContent();
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          body(),
          buildDots(),
          button(),
        ],
      ),
    );
  }
  
  //Body
  Widget body() {
  return Expanded(
    child: Center(
      child: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Images with adjusted size
                SizedBox(
                  width: 300, 
                  height: 300, 
                  child: Image.asset(
                    controller.items[currentIndex].image,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 30),

                // Titles
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    controller.items[currentIndex].title,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                // Description
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      controller.items[currentIndex].description,
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}

  //Dots
  Widget buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          controller.items.length,
          (index) => AnimatedContainer(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue
                // color: currentIndex == index ? primaryColor : Colors.grey,
              ),
              height: 5,
              width: currentIndex == index ? 30 : 7,
              duration: const Duration(milliseconds: 700))),
    );
  }

  //Button
  Widget button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.blue),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (currentIndex < controller.items.length - 1) {
              currentIndex++;
            } else {
              // Jika sudah di halaman terakhir, pindahkan ke halaman berikutnya.
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>
                      ProductList(), // Gantilah HalamanBerikutnya dengan nama kelas halaman berikutnya.
                ),
              );
            }
          });
        },
        child: Text(
          currentIndex == controller.items.length - 1
              ? "Shop Now"
              : "Next",
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:myshopshifa/productlist.dart';


// class LandingPage extends StatefulWidget {
//   const LandingPage({super.key});

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//       pages: [
//         PageViewModel(
//           title: "Slide 1",
//           body: "Deskripsi Slide 1",
//           image: Image.asset('assets/slide1.png'),
//         ),
//         PageViewModel(
//           title: "Slide 2",
//           body: "Deskripsi Slide 2",
//           image: Image.asset('assets/slide2.png'),
//         ),
//         PageViewModel(
//           title: "Slide 3",
//           body: "Deskripsi Slide 3",
//           image: Image.asset('assets/slide3.png'),
//         ),
//       ],
//       onDone: () {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => ProductList()),
//         );
//       },
//       done: Text("Done"),
//       showSkipButton: true,
//       skip: Text("Skip"),
//     );
//   }
// }