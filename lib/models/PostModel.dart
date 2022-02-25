/// users : [{"name":"Krishna","id":"1","atype":"Permanent"},{"name":"Sameera","id":"2","atype":"Permanent"},{"name":"Radhika","id":"3","atype":"Permanent"},{"name":"Yogesh","id":"4","atype":"Permanent"},{"name":"Radhe","id":"5","atype":"Permanent"},{"name":"Anshu","id":"6","atype":"Permanent"},{"name":"Balay","id":"7","atype":"Permanent"},{"name":"Julie","id":"8","atype":"Permanent"},{"name":"Swaminathan","id":"9","atype":"Permanent"},{"name":"Charandeep","id":"10","atype":"Permanent"},{"name":"Sankaran","id":"11","atype":"Permanent"},{"name":"Alpa","id":"12","atype":"Permanent"},{"name":"Sheth","id":"13","atype":"Temproary"},{"name":"Sabina","id":"14","atype":"Temproary"}]

class PostModel {
  PostModel({
      List<Users>? users,}){
    _users = users;
}

  PostModel.fromJson(dynamic json) {
    if (json['users'] != null) {
      _users = [];
      json['users'].forEach((v) {
        _users?.add(Users.fromJson(v));
      });
    }
  }
  List<Users>? _users;

  List<Users>? get users => _users;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_users != null) {
      map['users'] = _users?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// name : "Krishna"
/// id : "1"
/// atype : "Permanent"

class Users {
  Users({
      String? name, 
      String? id, 
      String? atype,}){
    _name = name;
    _id = id;
    _atype = atype;
}

  Users.fromJson(dynamic json) {
    _name = json['name'];
    _id = json['id'];
    _atype = json['atype'];
  }
  String? _name;
  String? _id;
  String? _atype;

  String? get name => _name;
  String? get id => _id;
  String? get atype => _atype;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['id'] = _id;
    map['atype'] = _atype;
    return map;
  }

}