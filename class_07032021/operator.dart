/* void main() {
  // logical operator 
  int a = 10, b = 7;
  print('a > b = ${a > b}');
  print('a < b = ${a < b}');
  print('a != b = ${a != b}');
} */

/* void main() {
  // type test operator
  var i = 10;
  print(i is int);
  print(i is String);
  print(i is! int);
}
 */
/* void main() {
  // Assignment Operators
  // จะกำหนดค่าต่อเมื่อค่าของ variable ที่ต้องการจะกำหนดยังมีค่าว่าง
  var i = 10, j;
  print(i);
  j ??= 20;
  print(j);
}
 */

void main() {
  // and or not operator
  // and
  print('----- and -----');
  print(true && true);
  print(true && false);
  // or
  print('----- or -----');
  print(false || true);
  print(false || false);
  print('--------------');
  var i = 10;
  print('$i >= 1 && $i <= 10');
  print('${(i >= 1) && (i <= 10)}');
}
