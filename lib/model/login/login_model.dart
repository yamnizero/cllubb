class ClubLoginModel {
  String? iD;
  String? userLogin;
  String? userPass;
  String? userNicename;
  String? userEmail;
  String? userUrl;
  String? userRegistered;
  String? userActivationKey;
  String? userStatus;
  String? displayName;
  String? userBusinessName;
  String? isUserType;
  String? userCountry;
  String? lastUserSeen;
  String? isUserRoll;
  String? isRegWay;
  String? isEditRoll;
  String? isUpgradeTo;
  String? isUserGroup;
  Null? userReferralLink;
  Null? isRealUser;
  String?  token;


  ClubLoginModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    userLogin = json['user_login'];
    userPass = json['user_pass'];
    userNicename = json['user_nicename'];
    userEmail = json['user_email'];
    userUrl = json['user_url'];
    userRegistered = json['user_registered'];
    userActivationKey = json['user_activation_key'];
    userStatus = json['user_status'];
    displayName = json['display_name'];
    userBusinessName = json['user_business_name'];
    isUserType = json['is_user_type'];
    userCountry = json['user_country'];
    lastUserSeen = json['last_user_seen'];
    isUserRoll = json['is_user_roll'];
    isRegWay = json['is_reg_way'];
    isEditRoll = json['is_edit_roll'];
    isUpgradeTo = json['is_upgrade_to'];
    isUserGroup = json['is_user_group'];
    userReferralLink = json['user_referral_link'];
    isRealUser = json['isRealUser'];
    token = json['token'];
  }

}
