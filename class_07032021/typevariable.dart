/* void main() {
  // Int Variable
  int i1 = 1, i2 = 2;
  print('i1');
  print('i2 = $i1');
  // ถ้าต้องการเชื่อมกับ string ให้ใส่ $ หน้า variable
  print('i1 + i2 + 3= ${i1+i2+3}');
  print('$i1 + $i2 + 3= ${i1+i2+3}');
  // ถ้าต้องการคำนวนให้ใส่ {}
} */

/* void main() {
  //Double Variable
  double d1;
  // จำนวนเต็ม
  int i2;
  d1 = 10.5;
  //สามารถเรียกใช้ค่าในภายหลังการกำหนด variable ได้
  print('d1 = {$d1}');
/*   d1=i2;
  // ไม่สามารถแปลงค่าชนิดของจำนวนได้ */
  d1 = 20;
  print('d1 = {$d1}');
/*   i2 = 10 + 5;
    //สารมารถบวกค่าตัวแปรตอนเรียกใช้ได้เลย
  print('i2 = ${i2}'); */
  i2 = (0.5 * 2).toInt();
  // สามารถแปลงค่าไปเป็น Int ได้เมื่อใส่ .toInt();
  print('i2 = ${i2}'); 
  d1 = i2.toDouble();
  // สามารถแปลงค่าไปเป็น Double ได้เมื่อใส่ .toDouble();
  print('d1 = $d1');
} */

/* void main() {
  // String Variable
  String str1 = 'Chiang Mai';
  String str2 = 'Lampang', str3 = 'Nan';
  String str4 = 'Tak''Lamhun';
  // สารมารถกำหนดตัวแปรต่อเนื่องให้ โดย ใส่ ,
  print ('$str1 $str2 $str3');
  print(str1 + str2 + str3);
  // ถ้าไม่อยู่ในเครื่องหมาย '' ให้เชื่อมด้วย +
  print(str4);
} */

/* void main() {
  // Boolean Variable
  String str1 = 'Nan';
  bool bo1 = str1 == 'NAN';
  // เทียบตัวอักษรกับ str1 ว่าเหมือนกันหรือไม่
  // รหัสอักขระตัวอักษรไม่เหมือนกันทำให้เกิด false
  print(bo1);
} */

/* void main() {
  // List Variable
  List<String> fruit = ['Mango', 'Banana', 'Orange'];
  print(fruit);
  // นำข้อมูลของ List ออกมาแสดงทั้งหมด
  print('fruit[0] = ' + fruit[0]);
  // นำข้อมูลของ List fruit index ที่ 0 มาแสดง
/*   print('first fruit = ' + fruit.first);
  // นำข้อมูลของ List fruit index แรก มาแสดง
  print('last fruit = ' + fruit.last);
  // นำข้อมูลของ List fruit index สุดท้าย มาแสดง */
/*   print(fruit.join());
  // .join() รวมข้อมูลจองทุก index มาไว้ในที่เดียว */
  fruit.add('Coconut');
  // add ค่า Coconut ไปใน list fruit
  print(fruit);
  fruit.removeAt(2);
  // remove ค่า indexที่ 2 ออกจาก list fruit
  print(fruit);
} */

/* void main() {
  // Map Variable
  // การ Mapping คือการจับคู่
  Map mp = new Map();
  mp['One'] = 100;
  mp['Two'] = 200;
  mp['Three'] = 300;
  // เป็นการ Mapping ระหว่างชื่อของข้อมูล กับ ค่าของข้อมูล
  print(mp);
  // นำข้อมูลของ Mapping ออกมาแสดงทั้งหมด
  print(mp['Two']);
  // นำข้อมูลของ Mapping mp ชื่อ Two มาแสดง
} */

/* void main() {
  // Dynamic
  // ไม่เจาะจงชนิดของข้อมูลที่ต้องการจะกำหนด
  print('-----Dynamic-----');
  dynamic dm1 = 100;
  dynamic dm2 = 'One hundred';
  dynamic dm3 = '58.7';
  dynamic dm4 = 'Fifty eight point seven';
  print('dm1 = $dm1');
  print('dm2 = $dm2');
  print('dm3 = $dm3');
  print('dm4 = $dm4');
  print('$dm1 = $dm2');
  dm4 = dm3;
  // สามารถเปลี่ยนชนิดของข้อมูลได้แม้จะกำหนดค่าไปเป็นประเภทอื่นแล้ว
  print('$dm3 = $dm4');

  // Variable
  // ไม่เจาะจงชนิดของข้อมูลที่ต้องการจะกำหนด เหมือน Dynamic
  print('-----Variable-----');
  var v1 = 10;
  var v2 = 'ten';
  var v3 = 20.5;
  var v4 = 'twenty point five';
  print('v1 = $v1');
  print('v2 = $v2');
  print('v3 = $v3');
  print('v4 = $v4');
/*   v1 = v2;
  // ไม่สามารถเปลี่ยนชนิดของข้อมูลได้ เพราะ จะกำหนดประเภทของข้อมูลไปตอนเรียกใส่ค่า v1 
  // แต่ Int สามารใส่ใน Double ได้*/
} */

/* void main() {
  // Constant
  // ถ้ากำหนดค่าของตัวแปรไปแล้วไม่สามารถแก้ค่าที่กำหนดได้
  print('------ Constant -----');
  const con1 = 1;
  const a1 = 10;
  const a2 = 100 + a1 + 99;
  // จะประกาศชนิดของข้อมูลหรือไม่ก็ได้
/*   const con1 = 20; 
  ไม่สามารถแก้ค่าที่กำหนดได้ เมื่อกำหนดไปแล้ว*/
  print('con1 = $con1');
  const String con2 = 'First constant string';
  print('con2 = $con2');
  // Final
  // ถ้ากำหนดค่าของตัวแปรไปแล้วไม่สามารถแก้ค่าที่กำหนดได้ แต่สามารถเรียกใช้และกำหนดค่าที่หลังได้
  print('------ Constant -----');
  final f1 = 33.9;
  print('f1 = $f1');
/*   f1 =44.7;
  final ไม่สามารถแก้ค่าที่กำหนดได้ */
  final f2;
  f2 = 'Thirdty three point nine';
  // สามารถที่จะประกาศแล้วกำหนดค่าทีหลังได้
  print('f2 = $f2');
  final f3;
  f3 = 30 + a2;
  print('f3 = $f3');
} */

void main() {
  int a = 10, b = 7;
  print('a + b = ${a + b}');
  print('a / b = ${a / b}');
  // จำนวนเต็มหารกันจะสามารถออกมาเป็นทศนิยมได้
  // Modulate
  // หารเอาจำนวนเศษ
  print('a % b = ${a % b}');
  //truncated division
  // หารเอาจำนวนเต็ม
  print('a ~/ b = ${a ~/ b}');
}
