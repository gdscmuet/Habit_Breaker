class GoalModel {
 String? uid;
  String? goalName;
  String? userUid;
  String? userName;
  String? deadline;
  String? category;

  GoalModel({
    this.uid,
    this.goalName,
      this.userUid,
          this.userName,
    // this.profileImage,
    this.deadline,
    this.category,
  });

  Map<String, dynamic> toMap(GoalModel goal) {
    var data = Map<String, dynamic>();
    data['uid'] = goal.uid;
     data['userUid'] = goal.userUid;
    data['goalName'] = goal.goalName;
    data['userName'] = goal.userName;
    // data['profile_image'] = user.profileImage;
    data['deadline'] = goal.deadline;
    data['category'] = goal.category;

    return data;
  }

  GoalModel.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData['uid'];
    this.goalName = mapData['goalName'];
    this.userName = mapData['userName'];
     this.userUid = mapData['userUid'];
    // this.profileImage = mapData['profile_image'];
    this.deadline = mapData['deadline'];
    this.category = mapData['category'];
  }

  // bool equals(GoalModel user) => user.uid == this.uid;
}
