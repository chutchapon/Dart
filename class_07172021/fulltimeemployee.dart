import 'employee.dart';

class fulltimeemployee extends employee {
  // constructor method
  fulltimeemployee(String id, String name) {
    super.setid(id);
    super.setname(name);
  }
  double _salary = 0;

  // overloading method in java
  // ไม่สามารถทำได้
  /* void setsalary() {
    this._salary = salary;
  } */

  // optional paramter
  void setsalary([double salary = 5000]) {
    this._salary = salary;
  }

  /* void setsalary(double salary) {
    this._salary = salary;
  } */

  @override
  // ชื่อเดียวกันแต่ทำงานต่างกัน
  showData() {
    print('ID : ' +
        getid() +
        ' name : ' +
        getname() +
        ' salary : ' +
        this._salary.toString());
  }
}
