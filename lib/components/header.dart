import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/unieumLogo.png',
              height: 30,
            ),
            Row(
              children: [
                Image.asset('assets/copper-coin-fill.png', height: 24),
                const SizedBox(width: 2),
                const Text(
                  '500',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 123, 131, 169)),
                )
              ],
            )
          ],
        ));
  }
}
