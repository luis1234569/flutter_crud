import 'package:flutter/material.dart';
import '../models/models.dart';

class RequestFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey =new GlobalKey<FormState>();
  final Request request;

  RequestFormProvider(this.request);
  
  // test() {
  //   print(request.name); 
  //   print(request.reason);
  //   print(request.description);
  //   print(request.type);
  //   print(request.career);
  // }
}