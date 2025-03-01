class Account {
  int id;
  String bankName;
  String accountName;
  int accountNumber;
  bool isFavourite;

  Account({
    required this.id,
    required this.bankName,
    required this.accountName,
    required this.accountNumber,
    required this.isFavourite,
  });

  static Account fromJson(json) {
    return Account(
      id: json['id'],
      bankName: json['bankName'],
      accountName: json['accountName'],
      accountNumber: json['accountNumber'],
      isFavourite: (json['isFavourite'] == '1' || json['isFavourite'] == 1 || json['isFavourite'] == 'TRUE'),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'bankName': bankName,
      'accountNumber': accountNumber,
      'accountName': accountName,
      'isFavourite': isFavourite,
    };
  }
}
