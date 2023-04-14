import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Your food',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red))),
            onChanged: ((value) => {}),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
