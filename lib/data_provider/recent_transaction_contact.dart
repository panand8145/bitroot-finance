const String recentTransactionContact =
    """[{"user_id": 1,"name":"Wade Bridges","profile_url":"https://i.pravatar.cc/150?img=1"},{"user_id": 2,"name":"Brylee Gilbert","profile_url":"https://i.pravatar.cc/150?img=2"},{"user_id": 3,"name":"Kaisley Carrillo","profile_url":"https://i.pravatar.cc/150?img=3"},{"user_id": 4,"name":"Elsa Archer","profile_url":"https://i.pravatar.cc/150?img=4"},{"user_id": 5,"name":"Lucian Boyle","profile_url":"https://i.pravatar.cc/150?img=5"},{"user_id": 6,"name":"Kye Dean","profile_url":"https://i.pravatar.cc/150?img=6"},{"user_id": 7,"name":"Amira Russo","profile_url":"https://i.pravatar.cc/150?img=7"},{"user_id": 8,"name":"Tanner Harris","profile_url":"https://i.pravatar.cc/150?img=8"},{"user_id": 9,"name":"Jayson Duke","profile_url":"https://i.pravatar.cc/150?img=9"},{"user_id": 10,"name":"Kellan Huff","profile_url":"https://i.pravatar.cc/150?img=10"},{"user_id": 11,"name":"Samara Kelly","profile_url":"https://i.pravatar.cc/150?img=12"},{"user_id": 12,"name":"Robert Ward","profile_url":"https://i.pravatar.cc/150?img=13"},{"user_id": 13,"name":"Ronin Trevino","profile_url":"https://i.pravatar.cc/150?img=14"},{"user_id": 14,"name":"Aryan Cook","profile_url":"https://i.pravatar.cc/150?img=15"},{"user_id": 15,"name":"Magnus Brock","profile_url":"https://i.pravatar.cc/150?img=16"},{"user_id": 16,"name":"Sonny Stokes","profile_url":"https://i.pravatar.cc/150?img=17"},{"user_id": 17,"name":"Kairi Yoder","profile_url":"https://i.pravatar.cc/150?img=18"}]""";

class RecentTransactionContact {
  int? userId;
  String? name;
  String? url;

  RecentTransactionContact.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    url = json['profile_url'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['user_id'] = userId;
    map['name'] = name;
    map['profile_url'] = url;
    return map;
  }
}
