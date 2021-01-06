main() {
  //variable types
  int a = 3;
  double b = 3.1;
  bool isRaining = true;
  bool isCold = false;

  var c = 3;
  c = 4;
  final d = 3;
  const e = 6;
  // inferencia
  var f ="example text";
  print(c is String);

  //operator
  print (isRaining || isCold);
  // array
  var names = ['Marco', 'Angela', 'Jhonny'];
  names.add('Jack');
  print(names.length);
  print(names.elementAt(0));
  print(names[1]);
  // set (a set cant have repeated values)
  Set<int> newset = {0,1,2,3,4,4,5,5,5};
  print(newset.length);
  // map
  Map<String, double> StudentScores = {
    'Marco': 9.2,
    'Angela':9.5
  };
  for (var key in StudentScores.keys) {
    //interpolacao
    print('key = $key');
  }
  for (var value in StudentScores.values) {
    //interpolacao
    print('value = $value');
  }
  for (var entry in StudentScores.entries) {
    //interpolacao
    print('${entry.key} = ${entry.value}');
  }
  // dynamic
  dynamic x ='test';
  x = 21;
  x = true;

}