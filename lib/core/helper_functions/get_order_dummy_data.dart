import '../../features/orders/data/models/order_model.dart';
import '../../features/orders/data/models/order_product_model.dart';
import '../../features/orders/data/models/shipping_address_model.dart';

OrderModel getDummyOrder() {
  // Create a sample shipping address
  ShippingAddressModel shippingAddress = ShippingAddressModel(
    name: 'John Doe',
    phone: '123-456-7890',
    address: '123 Main St',
    floor: '5th Floor',
    city: 'New York',
    email: 'johndoe@example.com',
  );

  // Create a sample list of order products
  List<OrderProductModel> orderProducts = [
    OrderProductModel(
      name: 'Product A',
      code: 'A123',
      imageUrl: 'https://via.placeholder.com/150',
      price: 49.99,
      quantity: 2,
    ),
    OrderProductModel(
      name: 'Product B',
      code: 'B456',
      imageUrl: 'https://via.placeholder.com/150',
      price: 29.99,
      quantity: 1,
    ),
    OrderProductModel(
      name: 'Product C',
      code: 'C789',
      imageUrl: 'https://via.placeholder.com/150',
      price: 19.99,
      quantity: 3,
    ),
  ];

  // Calculate total price
  double totalPrice = orderProducts.fold(
    0,
    (sum, product) => sum + (product.price * product.quantity),
  );

  // Create and return the OrderModel
  return OrderModel(
    totalPrice: totalPrice,
    uId: 'user123',
    shippingAddressModel: shippingAddress,
    orderProducts: orderProducts,
    paymentMethod: 'Cash',
  );
}
