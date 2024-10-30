import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Мокап данных о товаре
    final List<Map<String, dynamic>> items = [
      {
        "name": "Nike Air Force 1",
        "price": 14444,
        "image": "assets/nike2.png",
        "quantity": 1,
      },
    ];

    return Scaffold(     

      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [         
            // Список товаров в корзине
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Card(
                    color: Colors.transparent,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          // Картинка товара
                          Image.asset(
                            item["image"],
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(width: 16),
                          // Информация о товаре
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,                              
                              children: [
                                Text(
                                  item["name"],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "${item["price"]} ₽",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Кнопки для увеличения/уменьшения количества
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  // Логика уменьшения количества
                                },
                              ),
                              Text(
                                item["quantity"].toString(),
                                style: const TextStyle(fontSize: 16),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  // Логика увеличения количества
                                },
                              ),
                            ],
                          ),

                          // Галочка для подтверждения
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      
      // Нижняя панель с кнопкой оформления заказа
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(248, 255, 255, 255),        
        child: TextButton(onPressed: (){
        },
        child: const Text(
          "Оформить",
          textScaler: TextScaler.linear(2),
          ),
        ),     
      ),
    );
  }
}
