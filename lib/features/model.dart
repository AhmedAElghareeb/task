class HotelsData {
  late final List<HotelModel> data;
  
  HotelsData.fromJson(List<dynamic> json) {
    // data = List.from(json).map((e) => HotelModel.fromJson(e)).toList();
    data = json.map((e) => HotelModel.fromJson(e)).toList();
  }
}

class HotelModel {
  late final String name;
  late final num starts;
  late final num price;
  late final String currency;
  late final String image;
  late final num reviewScore;
  late final String review;
  late final String address;

  HotelModel.fromJson(Map<String, dynamic> json) {
      name = json['name'] ?? "";
      starts = json['starts'] ?? 0;
      price = json['price'] ?? 0;
      currency = json['currency'] ?? "";
      image = json['image'] ?? "";
      reviewScore = json['review_score'] ?? 0;
      review = json['review'] ?? "";
      address = json['address'] ?? "";
  }
}