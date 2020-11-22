
class PostModel{
  List<Posts>posts;
  PostModel({ this.posts});
  PostModel.fromJson(Map<String, dynamic> json) {
    if (json.putIfAbsent('posts', () => null) != null) {
      posts = new List<Posts>();
      json.putIfAbsent('posts', () => []).forEach((v) {
        posts.add(new Posts.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.posts != null) {
      data['posts'] = this.posts.map((v) => v.toJson()).toList();
    }
  }
}
class Posts{
  String userId;
  String id;
  String title;
  String body;
  Posts({ this.id,this.userId,this.title,this.body});
  Posts.fromJson(Map<String, dynamic> json) {
    id = json.putIfAbsent('id', () => null).toString();
    userId = json.putIfAbsent('main', () => null).toString();
    title = json.putIfAbsent('description', () => null).toString();
    body = json.putIfAbsent('icon', () => null).toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
}
}

