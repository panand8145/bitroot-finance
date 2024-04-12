// *** WALLET: current balance, spent till date
const userWalletJson = """{
"user_id": "1020",
"wallet_id": "AEDX-100424-1020",
"accountActive": true,
"balance": 204.05,
"spent": 2207.06
}""";

class UserWalletModel {
  String? userId; // user id
  String? walletId; // wallet id
  bool? isAccountActive; // true: account is active else block
  double? balance; // available wallet balance
  double? spent; // total user spent till date

  UserWalletModel(
      {this.userId,
      this.walletId,
      this.isAccountActive,
      this.balance,
      this.spent});

  UserWalletModel.fromJson(dynamic json) {
    userId = json["user_id"];
    walletId = json["wallet_id"];
    isAccountActive = json["accountActive"];
    balance = json["balance"];
    spent = json["spent"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["user_id"] = userId;
    map["wallet_id"] = walletId;
    map["accountActive"] = isAccountActive;
    map["balance"] = balance;
    map["spent"] = spent;
    return map;
  }
}
