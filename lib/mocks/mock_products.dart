import '../models/product.dart';

class MockProducts {
  static List<Product> fetchAll() {
    return [Product(title: "test1", imageUrl: "imageUrl", price: "12.0"),Product(title: "test2", imageUrl: "imageUrl", price: "12.0"),Product(title: "test3", imageUrl: "imageUrl", price: "12.0"),Product(title: "test4", imageUrl: "imageUrl", price: "12.0"),Product(title: "test5", imageUrl: "imageUrl", price: "12.0")];
  }
}
