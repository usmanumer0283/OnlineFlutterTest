class UserModel {
  Data data;
  Support support;
  UserModel({
    this.data,
    this.support

  });

  UserModel.fromJson(Map<String, dynamic> json) {
    data = json.putIfAbsent('data', () => null) != null
        ? new Data.fromJson(json.putIfAbsent('data', () => null))
        : null;
    support = json.putIfAbsent('support', () => null) != null
        ? new Support.fromJson(json.putIfAbsent('support', () => null))
        : null;
    }

  }

  class Data {
  String id ;
  String email;
  String first_name;
  String last_name;
  String avatar;
  String text;
  Data({ this.id,this.email,this.first_name,this.last_name,this.avatar, this.text});


  Data.fromJson(Map<String, dynamic> json) {
    id = json.putIfAbsent('id', () => null).toString();
    email = json.putIfAbsent('email', () => null).toString();
    first_name = json.putIfAbsent('first_name', () => null).toString();
    last_name = json.putIfAbsent('last_name', () => null).toString();
    avatar = json.putIfAbsent('avatar', () => null).toString();
    text =json.putIfAbsent('text', () => null).toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.first_name;
    data['last_name'] = this.last_name;
    data['avatar'] = this.avatar;
    data['text']=this.text;
    return data;
  }


}
class Support {
  String text;


  Support({this.text});

  Support.fromJson(Map<String, dynamic> json) {
    text = json.putIfAbsent('text', () => null).toString();

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;

    return data;
  }
}
