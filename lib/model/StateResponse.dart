class StateResponse {
  bool? success;
  List<State1>? state;

  StateResponse({this.success, this.state});

  StateResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['state'] != null) {
      state = <State1>[];
      json['state'].forEach((v) {
        state!.add(new State1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.state != null) {
      data['state'] = this.state!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class State1 {
  int? id;
  String? name;
  String? units;
  String? baseValue;
  String? maxBaseValue;

  State1({this.id, this.name, this.units, this.baseValue, this.maxBaseValue});

  State1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    units = json['units'];
    baseValue = json['base_value'];
    maxBaseValue = json['max_base_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['units'] = this.units;
    data['base_value'] = this.baseValue;
    data['max_base_value'] = this.maxBaseValue;
    return data;
  }
}