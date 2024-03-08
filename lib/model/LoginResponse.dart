class LoginResponse {
  bool? success;
  User? user;

  LoginResponse({this.success, this.user});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  int? mobile;
  String? companyCode;
  String? companyId;
  int? stateId;
  String? role;
  int? status;
  String? lastLogin;
  String? ip;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  String? token;
  State1? state;
  Device? device;

  User(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.mobile,
        this.companyCode,
        this.companyId,
        this.stateId,
        this.role,
        this.status,
        this.lastLogin,
        this.ip,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.token,
        this.state,
        this.device});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    mobile = json['mobile'];
    companyCode = json['company_code'];
    companyId = json['company_id'];
    stateId = json['state_id'];
    role = json['role'];
    status = json['status'];
    lastLogin = json['last_login'];
    ip = json['ip'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    token = json['token'];
    state = json['state'] != null ? new State1.fromJson(json['state']) : null;
    device =
    json['device'] != null ? new Device.fromJson(json['device']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['mobile'] = this.mobile;
    data['company_code'] = this.companyCode;
    data['company_id'] = this.companyId;
    data['state_id'] = this.stateId;
    data['role'] = this.role;
    data['status'] = this.status;
    data['last_login'] = this.lastLogin;
    data['ip'] = this.ip;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['token'] = this.token;
    if (this.state != null) {
      data['state'] = this.state!.toJson();
    }
    if (this.device != null) {
      data['device'] = this.device!.toJson();
    }
    return data;
  }
}

class State1 {
  int? id;
  String? name;

  State1({this.id, this.name});

  State1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Device {
  int? id;
  int? userId;
  String? deviceId;
  String? fcmToken;
  String? ip;
  String? versioncode;
  String? versionname;
  String? released;
  String? devicename;
  String? deviceManufacturer;
  String? token;
  String? type;
  String? createdAt;
  String? updatedAt;

  Device(
      {this.id,
        this.userId,
        this.deviceId,
        this.fcmToken,
        this.ip,
        this.versioncode,
        this.versionname,
        this.released,
        this.devicename,
        this.deviceManufacturer,
        this.token,
        this.type,
        this.createdAt,
        this.updatedAt});

  Device.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    deviceId = json['device_id'];
    fcmToken = json['fcm_token'];
    ip = json['ip'];
    versioncode = json['versioncode'];
    versionname = json['versionname'];
    released = json['released'];
    devicename = json['devicename'];
    deviceManufacturer = json['device_manufacturer'];
    token = json['token'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['device_id'] = this.deviceId;
    data['fcm_token'] = this.fcmToken;
    data['ip'] = this.ip;
    data['versioncode'] = this.versioncode;
    data['versionname'] = this.versionname;
    data['released'] = this.released;
    data['devicename'] = this.devicename;
    data['device_manufacturer'] = this.deviceManufacturer;
    data['token'] = this.token;
    data['type'] = this.type;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}