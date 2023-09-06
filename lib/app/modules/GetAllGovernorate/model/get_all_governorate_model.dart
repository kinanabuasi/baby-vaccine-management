// // ignore_for_file: unnecessary_new, prefer_void_to_null, unnecessary_this, unused_import, prefer_const_constructors, non_constant_identifier_names

// import 'dart:convert'; 
// import 'package:dartz/dartz_streaming.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http; 
// import '../../../../linkapi.dart';


// Future<List> getData() async {
//   http.Response response = await http.get(
//     AppLink.GetAllGovernorate as Uri,
//   );
//   return json.decode(response.body);
// }
// // FutureBuilder<List<String>>(){
// //   future: fetchGovernorates();
// //   initialData: const []; // Provide an empty list as the initial data
// //   builder: (context, snapshot) {
// //     if (snapshot.hasData) {
// //       final governorates = snapshot.data!; 
// //       return ListView.builder(
// //         itemCount: governorates.length,
// //         itemBuilder: (context, index) {
// //           return Text(governorates[index]);
// //         },
// //       );
// //     } else if (snapshot.hasError) {
// //       return Text('Error: ${snapshot.error}');
// //     } 
// //     return CircularProgressIndicator();
// //   };
// // }

// class GetAllGovernorate {
  
//   String? name;
//   Request? request;
//   List<dynamic>? response;

//   GetAllGovernorate({this.name, this.request, this.response});

//   GetAllGovernorate.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     request =
//         json['request'] != null ? Request.fromJson(json['request']) : null;
//     if (json['response'] != null) {
//       response = [];
//       json['response'].forEach((v) {
//         // Remove 'new Null.fromJson(v)' and directly add 'v' to the response list
//         response!.add(v);
//       });
//     }
//   } 
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     data['name'] = name;
//     if (request != null) {
//       data['request'] = request!.toJson();
//     }
//     if (response != null) {
//       // Instead of calling 'v?.toJson()', directly add 'v' to the list
//       data['response'] = response!.toList();
//     }
//     return data;
//   }
// }

// class Request {
//   String? method;
//   List<dynamic>? header;
//   Url? url;

//   Request({this.method, this.header, this.url});

//   Request.fromJson(Map<String, dynamic> json) {
//     method = json['method'];
//     if (json['header'] != null) {
//       header = [];
//       json['header'].forEach((v) {
//         // Remove 'new Null.fromJson(v)' and directly add 'v' to the header list
//         header!.add(v);
//       });
//     }
//     url = json['url'] != null ? Url.fromJson(json['url']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     data['method'] = method;
//     if (header != null) {
//       // Instead of calling 'v.toJson()', directly add 'v' to the list
//       data['header'] = header!.toList();
//     }
//     if (url != null) {
//       data['url'] = url!.toJson();
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
//     host = List<String>.from(json['host']);
//     port = json['port'];
//     path = List<String>.from(json['path']);
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = {};
//     data['raw'] = raw;
//     data['protocol'] = protocol;
//     data['host'] = host;
//     data['port'] = port;
//     data['path'] = path;
//     return data;
//   }
// }