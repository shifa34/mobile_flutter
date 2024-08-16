import 'package:flutter/material.dart';
import 'package:uastrpl3carshifademuna/detailhotel.dart';
import 'package:uastrpl3carshifademuna/item.dart';

class ListHotel extends StatefulWidget {
  const ListHotel({super.key});

  @override
  State<ListHotel> createState() => _ListHotelState();
}

class _ListHotelState extends State<ListHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Hotel List",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 1.1)),
            itemCount: item.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailHotel(hotelIndex: index),
                    ),
                  );
                },
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //harga
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          item[index][3],
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      //gambar
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: Image.asset(item[index][2], scale: 0.5, width: 1000, height: 750,),
                      ),
                      //nama
                      Text(item[index][0],
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      //rate
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          item[index][5],
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}