class employee {
  String _id = '000';
  // String id = '000';
  String _name = 'No Name';
  // String name = 'No Name';

  // constructor method
  // employee(String id, String name) {
  /* employee(id, name) {
    this._id = id;
    this._name = name;
  } */
  // สามารถเขียนสั้นๆ ได้
  employee([this._id = '000', this._name = 'unknow']);

  //setter id
  void setid(String id) {
    this._id = id;
  }

  /*   
  void setid(String id) {
  this.id = id;
  } 
  */

  //setter name
  void setname(String name) {
    this._name = name;
  }
  /* 
  void setname(String name) {
  this.name = name;
  } 
   */

  //getter id
  String getid() {
    return this._id;
  }
  /* 
  String getid() {
  return this.id;
  }
   */

  //getter name
  String getname() {
    return this._name;
  }

  /* 
  String getname() {
  return this.name;
  }
   */

  showData() {
    print('ID : ' + this._id + ' name : ' + this._name);
  }
}
