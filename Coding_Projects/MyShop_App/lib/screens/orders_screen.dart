import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/orders.dart' as ord;
import '../widgets/order_item.dart';
import '../widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<ord.Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) {
          return OrderItem(orderData.orders[i]);
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
