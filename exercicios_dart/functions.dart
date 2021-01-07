
//specified function
int sum(int a, int b) {
  return a+b;
}
// void function
void sumvoid(int a, int b) {
  print(a+b);
}
// function as a parameter
int exec(int a, int b, int Function(int c, int d) fn) {
  return fn(a,b);
}
// classes and objects
class Product {
  String name;
  double price;
}
class ProductConstructor {
  String name;
  double price;

  // ProductConstructor (String name, double price) {
  //   this.name = name;
  //   this.price = price;
  // }

  // positional parameters
  // ProductConstructor(this.name, this.price);

  // named parameters
  ProductConstructor({this.name, this.price});
}
main() {
  print(sum(2, 3));

  sumvoid(5, 6);

  final r = exec(2, 3, (a,b) {
    return a - b;
  });
  print(r);

  var p1 = new Product();

  p1.name = 'caneta';
  p1.price = 4.59;

  print("${p1.name} tem o preço de R\$ ${p1.price}");

  var p2 = new ProductConstructor(price: 9.89, name: 'caderno');

  print("${p2.name} tem o preço de R\$ ${p2.price}");
}