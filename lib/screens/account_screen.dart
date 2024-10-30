import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 50),
          // Профильная картинка и кнопка редактирования
          const Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/travis.png"),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Travis Scott',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Способы оплаты
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Основной способ оплаты | visa ***0345'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Статистика заказов
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('23', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('заказа'),
                ],
              ),
              Column(
                children: [
                  Text('3', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('Избранных\nмагазина', textAlign: TextAlign.center),
                ],
              ),
              Column(
                children: [
                  Text('5', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('предзаказов'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Меню действий
          const Expanded(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Оценить приложение'),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.support),
                  title: Text('Поддержка'),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip),
                  title: Text('Политика конфиденциальности',),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
