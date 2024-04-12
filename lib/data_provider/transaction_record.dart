const String transactionActivityJson =
    """[{"activity_name":"Apple MacBook 16 - Silver","merchant":"Apple Store","address":"1342 Colorado Street, Suite 32 - 92003","paid_amount":32340.3},{"activity_name":"Ueno Coffee Filters","merchant":"Target","address":"Main road, East - 360045","paid_amount":12.4},{"activity_name":"Electricity Bill","merchant":"Torrent Power","address":"8668 Tyra Squares, Marquiseborough, West Virginia - 24905","paid_amount":674.9},{"activity_name":"Gas Bill","merchant":"Adani Gas","address":"48837 Barton Dam Suite 348, Collinsview, Tennessee - 33552-5280","paid_amount":220.0},{"activity_name":"House Rent","merchant":"Maren Perry","address":"61047 Efrain Drive, New Loretahaven, ID 91529","paid_amount":3400.0}]""";

class TransactionRecord {
  String? activityName;
  String? merchant;
  String? address;
  double? paidAmount;

  TransactionRecord({
    this.activityName,
    this.merchant,
    this.address,
    this.paidAmount,
  });

  TransactionRecord.fromJson(Map<String, dynamic> json) {
    activityName = json["activity_name"];
    merchant = json["merchant"];
    address = json["address"];
    paidAmount = json["paid_amount"];
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["activity_name"] = activityName;
    json["merchant"] = merchant;
    json["address"] = address;
    json["paid_amount"] = paidAmount;
    return json;
  }
}
