import 'package:flutter/material.dart';

class SneakerDetailDialog extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const SneakerDetailDialog({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(name),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image),
          Text(price),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
