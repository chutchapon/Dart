/* void main() {
  // if else Statement
  // int a = 10, b = 11;
  int a = 11, b = 10;
/*   if (true) {
  if (false) {
  if (a > 5) {
  if (a > 11) { */
  if (a > b) {
    // print('Hello');
    print('a is greater than b');
  }
  // else {
  else if (a < b) {
    // print('Sawaddee');
    print('b is greater than a');
  } else {
    // ทางเลือกสุดท้ายไม่จำเป็นต้องใส่เงื่อนไข
    print('a is equal to b');
  }
}*/

/* void main() {
  // Nested If else Statement
  int a = 10, b = 20, c = 30;
  if (a > b) {
    if (a > c) {
      print('$a is the highest');
    } else {
      // b < a < c
      print('$c is the highest');
    }
  } else {
    // a < b
    if (b > c) {
      // a < c < b
      print('$b is the highest');
    } else {
      // a < b < c
      print('$c is the highest');
    }
  }
} */

void main() {
  // Switch case
  int a = 0;
  switch (a) {
    // ใช้ตัวแปรในการกำหนดค่าของ case
    // ไม่จำเป็นต้องเรียง case 1, 2, 3 ก็ได้
    // สามารถเปรียบเทียบได้แค่มีค่าเท่ากับ case เท่านั้น
    case 1:
      print('coffee');
      break;
    case 2:
      print('tea');
      break;
    case 3:
      print('milk');
      break;
    default:
      // กำหนดค่า default ถ้าไม่ตรงตามเงื่อนไข
      print('water');
      break;
  }
}
