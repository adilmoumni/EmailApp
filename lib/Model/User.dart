class User {
  int _id;
  String _username;
  String _password;

  User(this._id, this._username, this._password);

  User.map(dynamic obj) {
    this._id = obj['id'];
    this._password = obj['password'];
    this._username = obj['username'];
  }

  //getter
  int get id => _id;
  String get username => _username;
  String get password => _password;

//letter
  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['username'] = _username;
    map['password'] = _password;
    return map;
  }

  //constracter
  User.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._password = map['password'];
    this._username = map['username'];
  }
}
