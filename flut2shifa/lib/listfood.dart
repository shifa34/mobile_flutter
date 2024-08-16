import 'package:flutter/material.dart';

class ListFood extends StatefulWidget {
  const ListFood({super.key});

  @override
  State<ListFood> createState() => _ListFoodState();
}

class _ListFoodState extends State<ListFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white, size: 24),
        title: Text(
          "Restaurant Menu List",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 24,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 24,
              )),
        ],
      ),
      body: Card(
        margin: EdgeInsets.all(10),
        elevation: 20,
        shadowColor: Colors.green.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Food List",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              ListTile(
                  leading:
                      Image.asset('images/makanan1.jpg', height: 100, width: 100),
                  title: Text(
                    "Bakso",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "Bakso adalah jenis bola daging yang lazim ditemukan pada masakan Indonesia.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan2.jpeg', height: 100, width: 100),
                  title: Text(
                    "Roti Canai",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "Roti canai adalah sejenis roti pipih dengan pengaruh India",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan3.jpg', height: 100, width: 100),
                  title: Text(
                    "Mie Goreng",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "Mi goreng adalah hidangan mie yang dimasak dengan digoreng tumis khas Indonesia.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan4.jpg', height: 100, width: 100),
                  title: Text(
                    "Soto",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "Soto adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan5.jpg', height: 100, width: 100),
                  title: Text(
                    "Mie Ayam",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "hidangan khas Indonesia yang terbuat dari mi gandum yang dibumbui dengan daging ayam.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan6.jpeg', height: 100, width: 100),
                  title: Text(
                    "Rendang",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "hidangan berbahan dasar daging menggunakan aneka rempah-rempah dan santan.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan7.jpg', height: 100, width: 100),
                  title: Text(
                    "Pizza",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "hidangan gurih asal Italia sejenis adonan bundar dan pipih.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan8.jpg', height: 100, width: 100),
                  title: Text(
                    "sate",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan9.jpg', height: 100, width: 100),
                  title: Text(
                    "Kebab",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "hidangan daging yang dimasak dengan asal-usul masakan Timur Tengah.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
              ListTile(
                  leading:
                      Image.asset('images/makanan10.jpg', height: 100, width: 100),
                  title: Text(
                    "Martabak",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "Bergantung pada lokasinya, nama, dan komposisi martabak dapat bervariasi.",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete, size: 24, color: Colors.red),
                      Icon(Icons.add, size: 24, color: Colors.green),
                    ],
                  ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
