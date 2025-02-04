import 'package:fruit_hub_dashboard/features/orders/data/models/shipping_address_model.dart';

import '../../domain/entities/data/models/order_entity.dart';
import 'order_product_model.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProducts;
  final String paymentMethod;

  OrderModel(
      {required this.totalPrice,
      required this.uId,
      required this.shippingAddressModel,
      required this.orderProducts,
      required this.paymentMethod});

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        totalPrice: json['totalPrice'],
        uId: json['uId'],
        shippingAddressModel:
            ShippingAddressModel.fromJson(json['shippingAddressModel']),
        orderProducts: List<OrderProductModel>.from(
            json['orderProducts'].map((e) => OrderProductModel.fromJson(e))),
        paymentMethod: json['paymentMethod'],
      );
  toJson() => {
        'totalPrice': totalPrice,
        'uId': uId,
        'status': 'pending',
        'date': DateTime.now().toString(),
        'shippingAddressModel': shippingAddressModel.toJson(),
        'orderProducts': orderProducts.map((e) => e.toJson()).toList(),
        'paymentMethod': paymentMethod,
      };

  toEntity() => OrderEntity(
        totalPrice: totalPrice,
        uId: uId,
        shippingAddressModel: shippingAddressModel.toEntity(),
        orderProducts: orderProducts.map((e) => e.toEntity()).toList(),
        paymentMethod: paymentMethod,
      );
}

// payment method
