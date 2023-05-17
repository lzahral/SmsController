class Information {
  var name = "my device";
  var channelCount = 0;
  var phone = "";
  var password = "1234";

  Information(
      {required this.name,
      required this.channelCount,
      required this.phone,
      required this.password});

  Information.fromMap(Map<String, dynamic> item)
      : name = item["name"],
        channelCount = item["channelCount"],
        phone = item["phone"],
        password = item["password"];

  Map<String, Object> toMap() {
    return {
      'name': name,
      'channelCount': channelCount,
      'phone': phone,
      'password': password,
    };
  }
}
