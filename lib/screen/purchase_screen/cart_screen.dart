import 'package:edtech/utilities/strings.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/purchase_screen/cart_card.dart';
import 'package:edtech/widget/purchase_screen/checkout_card.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.yourCart),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: CartCard(),
          ),
        ),
      ),
      bottomNavigationBar: const CheckoutCard(),
    );
  }
}
