// *** WALLET: current balance, spent till date
const userProfileJson = """{
"first_name":"Rahul",
"last_name":"Shah",
"date_of_birth":"17-07-1990",
"gender":"Male",
"email":"rahul.shah@gmail.com",
"mobile":"9876543210",
"country_code":"+91",
"profile_picture":"https://i.pravatar.cc/150?img=11"
}""";

class UserProfileModel {
  String? firstName;
  String? lastName;
  String? dateOfBirth;
  String? gender;
  String? email;
  String? mobile;
  String? countryCode;
  String? profilePicture;

  UserProfileModel({
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.gender,
    this.email,
    this.mobile,
    this.countryCode,
    this.profilePicture,
  });

  UserProfileModel.fromJson(dynamic json) {
    firstName = json["first_name"];
    lastName = json["last_name"];
    dateOfBirth = json["date_of_birth"];
    gender = json["gender"];
    email = json["email"];
    mobile = json["mobile"];
    countryCode = json["country_code"];
    profilePicture = json["profile_picture"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["first_name"] = firstName;
    map["last_name"] = lastName;
    map["date_of_birth"] = dateOfBirth;
    map["gender"] = gender;
    map["email"] = email;
    map["mobile"] = mobile;
    map["country_code"] = countryCode;
    map["profile_picture"] = profilePicture;
    return map;
  }
}
