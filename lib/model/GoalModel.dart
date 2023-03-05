class GoalModel {
 String? uid;
  String? goalName;
  
  String? deadline;
  String? category;

  GoalModel({
    this.uid,
    this.goalName,
    // this.profileImage,
    this.deadline,
    this.category,
  });

  Map<String, dynamic> toMap(GoalModel goal) {
    var data = Map<String, dynamic>();
    data['uid'] = goal.uid;
    data['goalName'] = goal.goalName;
    // data['profile_image'] = user.profileImage;
    data['deadline'] = goal.deadline;
    data['category'] = goal.category;

    return data;
  }

  GoalModel.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData['uid'];
    this.goalName = mapData['goalName'];
    // this.profileImage = mapData['profile_image'];
    this.deadline = mapData['deadline'];
    this.category = mapData['category'];
  }

  // bool equals(GoalModel user) => user.uid == this.uid;
}
