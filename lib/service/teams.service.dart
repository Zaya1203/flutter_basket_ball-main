import 'dart:convert';
import 'dart:io';

import 'package:basketball/model/teams.model.dart';
import 'package:basketball/ui/teamsui.model.dart';
import 'package:http/http.dart' as http;

class TeamsService {
  Future<List<TeamsUI>> loadTeams() async {
    var _uri = Uri.https('www.mocky.io', 'v2/5de8d40d31000074006b1487');
    var response = await http.Client().get(_uri);
    List<TeamsUI> teams = List.empty(growable: true);
    if (response.statusCode == HttpStatus.ok) {
      var listGame = HomeTeams.fromJson(jsonDecode(response.body));
      listGame.data?.forEach((element) {
        teams.add(
          TeamsUI(
            HomeTeam: element.homeTeam!.fullName!,
          ),
        );
      });
    }
    return teams;
  }
}
