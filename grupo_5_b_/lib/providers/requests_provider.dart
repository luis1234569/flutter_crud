import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:grupo_5_b_/models/models.dart';

class RequestsProvider extends ChangeNotifier {
  final String _baseUrl = 'localhost:8080';
  final List<Request> requests = [];
  Request request = Request(
      name: '',
      dni: '',
      career: '',
      type: '',
      reason: '',
      description: '',
      active: true);
  late Request selectedRequest;

  RequestsProvider() {
    getRequests();
  }

  Future<List<Request>> getRequests() async {
    var url = Uri.http(_baseUrl, 'request/list');
    var response = await http.get(url);
    List<dynamic> requestsList = json.decode(response.body);
    requestsList.forEach((request) {
      final requestTemp = Request.fromMap(request);
      requests.add(requestTemp);
    });
    return requests;
  }

  Future createRequest(Map<String, dynamic> request) async {
    var url = Uri.http(_baseUrl, 'request/save');
    var response = await http.post(url,
        body: jsonEncode(request),
        headers: {"Content-Type": "application/json"});
  }

  Future updateRequest(Map<String, dynamic> request) async {
    var url = Uri.http(_baseUrl, 'request/update');
    var response = await http.put(url,
        body: jsonEncode(request),
        headers: {"Content-Type": "application/json"});
  }


}
