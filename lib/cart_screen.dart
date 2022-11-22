import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'component/button_billing.dart';
part 'component/billing.dart';
part 'component/button_add_more.dart';
part 'component/store_name.dart';
part 'component/menu.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    const billing = Billing(18000, 3000);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          '장바구니',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          StoreName('치킨 잠실점', 'images/chickenCartoonImage.jpg'),
          SizedBox(
            height: 1,
          ),
          Menu(
            '후라이드 치킨',
            '• 찜 & 리뷰 약속 : 참여. 서비스음료제공',
            '${billing.totalPrice()}원',
          ),
          SizedBox(
            height: 1,
          ),
          ButtonAddMore(),
          billing,
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            height: 65,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ButtonBilling(
              billing.totalPrice(),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
