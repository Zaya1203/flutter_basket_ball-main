class HomeTeams {
  List<HomeTeam>? data;

  HomeTeams({this.data});

  HomeTeams.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <HomeTeam>[];
      json['data'].forEach((v) {
        data!.add(new HomeTeam.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeTeam {
  int? id;
  String? abbreviation;
  String? city;
  String? conference;
  String? division;
  String? fullName;
  String? name;

  HomeTeam(
      {this.id,
      this.abbreviation,
      this.city,
      this.conference,
      this.division,
      this.fullName,
      this.name});

  HomeTeam.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    abbreviation = json['abbreviation'];
    city = json['city'];
    conference = json['conference'];
    division = json['division'];
    fullName = json['full_name'];
    name = json['name'];
  }

  // ignore: non_constant_identifier_names
  get homeTeam => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['abbreviation'] = this.abbreviation;
    data['city'] = this.city;
    data['conference'] = this.conference;
    data['division'] = this.division;
    data['full_name'] = this.fullName;
    data['name'] = this.name;
    return data;
  }
}
