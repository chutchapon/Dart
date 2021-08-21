/* void main() {
  // While loop
  int control = 1; // start
  // int contol = 11;
  while (control <= 10) {
    // loop function stop
    // while (control <= 15) {
    print('Round $control');
    control++; // step loop function add variable
    // control+=2;
  }
} */

/* void main() {
  // Do while loop
  // ทำงานก่อนแล้วค่อยตรวจสอบว่ามีเงื่อนไชเป็นเท็จหรือไม่
  int control = 1; // start
  do {
    print('Round $control');
    control++; // step loop function add variable
  } while (control <= 10); // loop function stop
} */

/* void main() {
// For loop
// ค่าการstart loop เงื่อนไขการ stop loop และการ step loop อยู่ใน () หลัง for
// จะใช้ก็ต่อเมื่อรุ้จำนวนรอบที่ต้องการวนลูป
  for (int control = 1; control <= 10; control++) {
    print('Round $control');
  }

  var list1 = [1, 2, 3, 4, 5];
  print('For in length Loop');
  // for (int i = 0; i < 5; i++) {
  for (int i = 0; i < list1.length; i += 2) {
    //จะเข้าถึงทุกตัวใน list หรือกำหนดเงื่อนไขที่ต้องการเข้าถึงใน list
    print('list[$i] = ${list1[i]}');
  }

  print('For variable in list');
  // var list1 = [1, 2, 3, 4, 5];
  int i = 0;
  for (var item in list1) {
    //จะเข้าถึงทุกตัวใน list ไม่สามารถกำหนดเงื่อนไขได้
    print('list[${i}] = $item');
    i = i + 1;
  }
} */

void main() {
  //Jump loop
  for (int i = 1; i <= 10; i++) {
    // if (i == 3) continue;
    // if (i == 3 || i == 7) continue;
    if (i % 2 == 0) continue;
    // i==  จะไม่ทำคำสั่งหลังจากที่เช็คเงื่อนไขแล้ว และไปทำรอบต่อไป
    if (i > 5) break;
    print('i = $i');
  }
}
