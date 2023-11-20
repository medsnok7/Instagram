import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/nav_bar.dart';

class ShopWidget extends StatefulWidget {
  const ShopWidget({super.key});

  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: SizedBox(
        width: 250,
        child: NavBar(),
      ),
      appBar: CustomShopAppbar(),
    );
  }
}

class CustomShopAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomShopAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text('Shop'),
      backgroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
