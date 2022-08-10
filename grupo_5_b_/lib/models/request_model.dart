import 'dart:convert';

class Request {
  Request({
    this.id,
    required this.name,
    this.dni,
    required this.career,
    required this.type,
    required this.reason,
    required this.description,
    this.phonecontact,
    this.registerdate,
    this.scorereply,
    required this.active,
  });

  int? id;
  String name;
  String? dni;
  String career;
  String type;
  String reason;
  String description;
  String? phonecontact;
  String? registerdate;
  int? scorereply;
  bool active;

  factory Request.fromJson(String str) => Request.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Request.fromMap(Map<String, dynamic> json) => Request(
        id: json["id"],
        name: json["name"],
        dni: json["dni"],
        career: json["career"],
        type: json["type"],
        reason: json["reason"],
        description: json["description"],
        phonecontact: json["phonecontact"],
        registerdate: json["registerdate"],
        scorereply: json["scorereply"],
        active: json["active"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "dni": dni,
        "career": career,
        "type": type,
        "reason": reason,
        "description": description,
        "phonecontact": phonecontact,
        "registerdate": registerdate,
        "scorereply": scorereply,
        "active": active,
      };
}
