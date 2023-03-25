class ConnectionRequestModel {
 String? receiverUid;
  String? senderUid;
  String? goalId;

  String? goalName;
  String? senderName;
  String? sentDate;
  String? deadline;

  ConnectionRequestModel({
    this.receiverUid,
      this.goalId,
    this.goalName,
      this.senderName,
          this.sentDate,
    // this.profileImage,
    this.deadline,
    this.senderUid,
  });

  Map<String, dynamic> toMap(ConnectionRequestModel goal) {
    var data = Map<String, dynamic>();
    data['receiverUid'] = goal.receiverUid;
     data['goalId'] = goal.goalId;
     
     data['senderUid'] = goal.senderUid;
    data['goalName'] = goal.goalName;
    data['senderName'] = goal.senderName;
    // data['profile_image'] = user.profileImage;
    data['deadline'] = goal.deadline;
    data['sentDate'] = goal.sentDate;

    return data;
  }

  ConnectionRequestModel.fromMap(Map<String, dynamic> mapData) {
    receiverUid = mapData['receiverUid'];
    goalName = mapData['goalName'];
    goalId = mapData['goalId'];
    senderName = mapData['senderName'];
     senderUid = mapData['senderUid'];
    // this.profileImage = mapData['profile_image'];
    deadline = mapData['deadline'];
    sentDate = mapData['sentDate'];
  }

  // bool equals(ConnectionRequestModel user) => user.uid == this.uid;
}
