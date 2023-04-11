class HomeModel {
  bool? success;
  String? message;
  List<Data>? data;

  HomeModel({this.success, this.message, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? nama;
  String? nim;
  String? role;
  String? bidang;

  Data({this.id, this.nama, this.nim, this.role, this.bidang});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    nim = json['nim'];
    role = json['role'];
    bidang = json['bidang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['nim'] = this.nim;
    data['role'] = this.role;
    data['bidang'] = this.bidang;
    return data;
  }
}