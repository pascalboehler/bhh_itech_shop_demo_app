import '../models/product.dart';

class MockProducts {
  static List<Product> fetchAll() {
    return [
      Product(
          id: 1,
          title: "T-Shirt schwarz",
          imageUrl: "imageUrl",
          price: "12.00€",
          description: "Ein T-Shirt. Ist halt ein t-Shirt ne?"),
      Product(
          id: 2,
          title: "test2",
          imageUrl: "imageUrl",
          price: "12.0",
          description: "Test"),
      Product(
          id: 3,
          title: "test3",
          imageUrl: "imageUrl",
          price: "12.0",
          description: "Test"),
      Product(
          id: 4,
          title: "test4",
          imageUrl: "imageUrl",
          price: "12.0",
          description: "Test"),
      Product(
          id: 5,
          title: "test5",
          imageUrl: "imageUrl",
          price: "12.0",
          description: "Test")
    ];
  }
}
