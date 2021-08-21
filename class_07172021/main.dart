import 'employee.dart';
import 'fulltimeemployee.dart';

main() {
  print('-----start-----');
  employee emp1 = employee('001', 'James Bond');
/*   employee emp1 = employee();
  emp1.setid('001');
  emp1.setname('admin'); */
  // employee emp2 = employee();
  fulltimeemployee emp2 = fulltimeemployee('002', 'Ethan Hunt');
  emp2.setsalary(15000);
  fulltimeemployee emp3 = fulltimeemployee('003', 'Jason Bourne');
  emp3.setsalary();
/*   fulltimeemployee emp2 = fulltimeemployee();
  emp2.setid('002');
  emp2.setname('user');
  emp2.setsalary(15000);
  fulltimeemployee emp3 = fulltimeemployee();
  emp3.setid('003');
  emp3.setname('tester');
  emp3.setsalary(); */
  // shotdata
  emp1.showData();
  emp2.showData();
  emp3.showData();
  print('-----end-----');
}

/* class employee {
  //class เพื่อเรียกใช้แบบ oop
  showData() {
    print('this is employee');
  }
} */

