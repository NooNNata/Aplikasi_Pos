import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Image.asset(
            'assets/home.png',
            width: 25,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Search .....',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            'assets/cart.png',
            width: 25,
          ),
        )
      ],
    );
  }
}
