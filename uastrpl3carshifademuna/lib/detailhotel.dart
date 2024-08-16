import 'package:flutter/material.dart';
import 'package:uastrpl3carshifademuna/item.dart';

class DetailHotel extends StatefulWidget {
  const DetailHotel({super.key, @required this.hotelIndex});
  final hotelIndex;

  @override
  State<DetailHotel> createState() => _DetailHotelState();
}

class _DetailHotelState extends State<DetailHotel> {
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
          // Column(
            
          // )
          //rate bintang
          Padding(padding: EdgeInsets.all(15),
            child: Text(item[widget.hotelIndex][4], 
              style: TextStyle(
                fontSize: 15,
                color: Colors.red)),
          ),
          // harga
          Padding(padding: EdgeInsets.all(15),
            child: Text(item[widget.hotelIndex][3], 
              style: TextStyle(
                fontSize: 15,
                color: Colors.red)),
          ),
          //nama
          Padding(padding: EdgeInsets.all(15),
            child: Text(item[widget.hotelIndex][0], 
              style: TextStyle(
                fontSize: 15,
                color: Colors.red)),
          ),
          //jalan
          Padding(padding: EdgeInsets.all(15),
            child: Text(item[widget.hotelIndex][1], 
              style: TextStyle(
                fontSize: 15,
                color: Colors.red)),
          ),
          //gambar
          SizedBox(height: 20),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),),
                    child: Image.asset(item[widget.hotelIndex][2],scale: 0.2,),
                ),
              ],
            ),
          ),
          //jumlah org
          Padding(padding: EdgeInsets.all(15),
            child: Text(item[widget.hotelIndex][6], 
              style: TextStyle(
                fontSize: 15,
                color: Colors.red)),
          ),
          //fasilitas
          Padding(padding: EdgeInsets.all(15),
            child: Text(item[widget.hotelIndex][7], 
              style: TextStyle(
                fontSize: 15,
                color: Colors.red)),
          ),
          //kelas
          SizedBox(height: 20),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(20),
              child: Text("Kelas:",
                style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
                ),
                Padding(padding: EdgeInsets.all(20),
                child: DropdownButton(items: const [
                  DropdownMenuItem(
                    value: 5,
                    child:Text("VIP",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                    ),
                    DropdownMenuItem(
                    value: 10,
                    child:Text("Deluxe",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                    ),
                    DropdownMenuItem(
                    value: 15,
                    child:Text("Luxury",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                    ),
                    DropdownMenuItem(
                    value: 20,
                    child:Text("Basic",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                    ),
                ],
                onChanged: (value){
                  setState(() {});
                },
              ),
              ),
            ],
          ),
          //rate
          Padding(padding: EdgeInsets.all(15),
            child: Text(item[widget.hotelIndex][4], 
              style: TextStyle(
                fontSize: 15,
                color: Colors.red)),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}