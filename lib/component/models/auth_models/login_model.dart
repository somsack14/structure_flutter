class LoginModel {
  bool? _status;
  Data? _data;

  bool? get status => _status;
  Data? get data => _data;

  LoginModel({bool? status, Data? data}) {
    _status = status;
    _data = data;
  }

  LoginModel.fromJson(dynamic json) {
    _status = json["status"];
    _data = json["data"] != null ? Data.fromJson(json["data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = _status;
    if (_data != null) {
      map["data"] = _data?.toJson();
    }
    return map;
  }
}

class Data {
  Customer? _customer;
  String? _token;

  Customer? get customer => _customer;
  String? get token => _token;

  Data({Customer? customer, String? token}) {
    _customer = customer;
    _token = token;
  }

  Data.fromJson(dynamic json) {
    _customer =
        json["customer"] != null ? Customer.fromJson(json["customer"]) : null;
    _token = json["token"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_customer != null) {
      map["customer"] = _customer?.toJson();
    }
    map["token"] = _token;
    return map;
  }
}

class Customer {
  int? _id;
  String? _firstname;
  String? _lastname;
  String? _phone;
  String? _password;
  String? _birthday;
  String? _gender;
  dynamic _drId;
  dynamic _prId;
  dynamic _village;
  int? _status;
  String? _image;
  String? _backgroundImage;
  dynamic _rememberToken;
  String? _deviceToken;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  String? get firstname => _firstname;
  String? get lastname => _lastname;
  String? get phone => _phone;
  String? get password => _password;
  String? get birthday => _birthday;
  String? get gender => _gender;
  dynamic get drId => _drId;
  dynamic get prId => _prId;
  dynamic get village => _village;
  int? get status => _status;
  String? get image => _image;
  String? get backgroundImage => _backgroundImage;
  dynamic get rememberToken => _rememberToken;
  String? get deviceToken => _deviceToken;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Customer(
      {int? id,
      String? firstname,
      String? lastname,
      String? phone,
      String? password,
      String? birthday,
      String? gender,
      dynamic drId,
      dynamic prId,
      dynamic village,
      int? status,
      String? image,
      String? backgroundImage,
      dynamic rememberToken,
      String? deviceToken,
      String? createdAt,
      String? updatedAt}) {
    _id = id;
    _firstname = firstname;
    _lastname = lastname;
    _phone = phone;
    _password = password;
    _birthday = birthday;
    _gender = gender;
    _drId = drId;
    _prId = prId;
    _village = village;
    _status = status;
    _image = image;
    _backgroundImage = backgroundImage;
    _rememberToken = rememberToken;
    _deviceToken = deviceToken;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Customer.fromJson(dynamic json) {
    _id = json["id"];
    _firstname = json["firstname"];
    _lastname = json["lastname"];
    _phone = json["phone"];
    _password = json["password"];
    _birthday = json["birthday"];
    _gender = json["gender"];
    _drId = json["dr_id"];
    _prId = json["pr_id"];
    _village = json["village"];
    _status = json["status"];
    _image = json["image"];
    _backgroundImage = json["background_image"];
    _rememberToken = json["remember_token"];
    _deviceToken = json["device_token"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["firstname"] = _firstname;
    map["lastname"] = _lastname;
    map["phone"] = _phone;
    map["password"] = _password;
    map["birthday"] = _birthday;
    map["gender"] = _gender;
    map["dr_id"] = _drId;
    map["pr_id"] = _prId;
    map["village"] = _village;
    map["status"] = _status;
    map["image"] = _image;
    map["background_image"] = _backgroundImage;
    map["remember_token"] = _rememberToken;
    map["device_token"] = _deviceToken;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    return map;
  }
}
