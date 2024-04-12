import 'dart:convert';
import 'package:get/get.dart';
import '../../data_provider/profile_model.dart';
import '../../data_provider/recent_transaction_contact.dart';
import '../../data_provider/transaction_record.dart';
import '../../data_provider/user_wallet.dart';

class DashboardController extends GetxController {
  final userProfile = UserProfileModel().obs;
  final userWallet = UserWalletModel().obs;
  final recentTransContact = <RecentTransactionContact>[].obs;
  final transactionRecords = <TransactionRecord>[].obs;

  DashboardController() {
    userProfile.value = UserProfileModel.fromJson(json.decode(userProfileJson));
    userWallet.value = UserWalletModel.fromJson(json.decode(userWalletJson));
    recentTransContact.value = (json.decode(recentTransactionContact) as List)
        .map<RecentTransactionContact>(
            (e) => RecentTransactionContact.fromJson(e))
        .toList();
    transactionRecords.value = (json.decode(transactionActivityJson) as List)
        .map<TransactionRecord>((e) => TransactionRecord.fromJson(e))
        .toList();
  }
}
