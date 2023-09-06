// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_new, unnecessary_this
// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_local_variable, avoid_print, unused_import
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../linkapi.dart';
import 'package:baby_lc/app/modules/Adding_Center/views/adding_center_view.dart';
import 'package:baby_lc/app/modules/CreateChildCard/views/create_child_card_view.dart';



// class GetRegionsofGovernorate {
//   String? name;
//   Request? request;
//   List<Null>? response; 
//   GetRegionsofGovernorate({this.name, this.request, this.response}); 
//   GetRegionsofGovernorate.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     request =
//         json['request'] != null ? new Request.fromJson(json['request']) : null;
//     if (json['response'] != null) {
//       response = <Null>[];
//       json['response'].forEach((v) {
//         response!.add(new Null.fromJson(v));
//       });
//     }
//   } 
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     if (this.request != null) {
//       data['request'] = this.request!.toJson();
//     }
//     if (this.response != null) {
//       data['response'] = this.response!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Request {
//   String? method;
//   List<Null>? header;
//   Url? url; 
//   Request({this.method, this.header, this.url}); 
//   Request.fromJson(Map<String, dynamic> json) {
//     method = json['method'];
//     if (json['header'] != null) {
//       header = <Null>[];
//       json['header'].forEach((v) {
//         header!.add(new Null.fromJson(v));
//       });
//     }
//     url = json['url'] != null ? new Url.fromJson(json['url']) : null;
//   } 
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['method'] = this.method;
//     if (this.header != null) {
//       data['header'] = this.header!.map((v) => v.toJson()).toList();
//     }
//     if (this.url != null) {
//       data['url'] = this.url!.toJson();
//     }
//     return data;
//   }
// }

// class Url {
//   String? raw;
//   String? protocol;
//   List<String>? host;
//   String? port;
//   List<String>? path; 
//   Url({this.raw, this.protocol, this.host, this.port, this.path}); 
//   Url.fromJson(Map<String, dynamic> json) {
//     raw = json['raw'];
//     protocol = json['protocol'];
//     host = json['host'].cast<String>();
//     port = json['port'];
//     path = json['path'].cast<String>();
//   } 
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['raw'] = this.raw;
//     data['protocol'] = this.protocol;
//     data['host'] = this.host;
//     data['port'] = this.port;
//     data['path'] = this.path;
//     return data;
//   }
// }
