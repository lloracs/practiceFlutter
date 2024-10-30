import 'package:flutter/material.dart';
import '../widgets/sneaker_detail_dialog.dart';

class SneakerListScreen extends StatelessWidget {
  const SneakerListScreen({super.key});

  static const List<Map<String, String>> sneakers = [
    {"name": "NIKE AIR FORCE 1", "price": "12 359 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 HIGH", "price": "14 359 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 Jord.", "price": "11 759 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 Low", "price": "13 259 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1", "price": "12 359 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 HIGH", "price": "14 359 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 Jord.", "price": "11 759 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 Low", "price": "13 259 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1", "price": "12 359 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 HIGH", "price": "14 359 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 Jord.", "price": "11 759 P.", "image": "assets/nike2.png"},
    {"name": "NIKE AIR FORCE 1 Low", "price": "13 259 P.", "image": "assets/nike2.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Travis Scott ", style: TextStyle(color: Colors.white)),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Горизонтальный список с изображением
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/nike1.png",
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Подборка для вас",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                itemCount: sneakers.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final sneaker = sneakers[index];
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => SneakerDetailDialog(
                          name: sneaker["name"]!,
                          price: sneaker["price"]!,
                          image: sneaker["image"]!,
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              sneaker["image"]!,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              sneaker["name"]!,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 22, 22, 22),
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              sneaker["price"]!,
                              style: const TextStyle(
                                color: Color.fromARGB(179, 0, 0, 0),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),                          
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 0, 26, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: const Text(
                                'В корзину',
                                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),      
    );
  }
}
