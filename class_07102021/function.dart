void main() {
/*   add(1, 2); // argument คือ ค่าที่ถูกส่งไปยัง ฟังก์ชั่น
  int result = add3num(1, 2, 3);
  print('add3num result = $result');
  print('add3num 5+6+7 = ${add3num(5, 6, 7)}');
  printlinestar();
  print('4+3 = ${add2num(4, 3)}'); */

/*   // First-class Function 
  //ตัวแปรที่ใช้แทน Function ได้
  var ptlinestar =
      printlinestar; 
  ptlinestar();
  var ptlineplus =
      printlineplus; 
  ptlineplus();
  var add3numtotal = add3num(3, 4, 5);
  print('add 3+4+5 = ${add3numtotal}');
  var subtotal = sub(10, 5);
  print('sub 10-5 = ${subtotal}'); */

/*   // Optional arguement
  var suboptional = sub(10);
  print('suboptional = ${suboptional}'); */

  printData(name: 'Tom', city: 'Bangkok');
  printData(city: 'Chiang Mai', name: 'Gorge');
}

void printData({var name, var city}) {
  // ไม่ได้กำหนดและไม่มี return type จะเป็นค่า dynamic
  print('$name lives in $city');
}

/* int sub(int a, [int b = 1]) => a - b;
// Optional parameter */

// int sub(int a, int b) => a - b;

/* int add2num(int a, int b) => a + b;
// Arrow function */

/* void add(int a, int b) {
  // Function with parameter
  // ไม่มี return type จะใช้ void
  // a,b parameter คือ ค่าที่รับมาจาก ฟังก์ชั่น
  // รับค่าจากฟังก์ชั่นอื่นเพื่อมาคำนวนได้
  print('add result is = ${a + b}');
} */

/* int add3num(int a, int b, int c) {
  // Function with parameter and return type
  // มีการ return ค่ากลับจะต้องมีตัวแปรมารับ
  // ถ้ากำหนดค่าเป็นชนิดไหน จะไม่สามารถ return ข้ามชนิดได้
  int result = a + b + c;
  return result;
} */

/* void printlineplus() => print('++++++');
// Arrow function */

/* void printlinestar() {
  // Function without parameter
  // ไม่มี return type จะใช้ void
  // ห้ามมีอักขระพิเศษ ห้ามตั้งชื่อตามคำสั่ง เช่น if
  print('*****');
} */
