enum Risktolerance{
  select(title: "Risk tolerance"),
  yes(title:"Yes" ),
  no(title: "No");
  const Risktolerance({required this.title});
  final String title;
}
class Profile{
  Profile({
    required this.customerid,
    required this.username,
    required this.income,
    required this.expense,
    required this.professionsalary,
    required this.risktolerance,
    required this.age,
    required this.retirementage,
    required this.saving,
    required this.financialgoals,
    required this.interests
  });
  String customerid;
  String username;
  int income;
  int expense;
  int professionsalary;
  Risktolerance risktolerance;
  int age;
  int retirementage;
  int saving;
  int financialgoals;
  String interests;
}
List <Profile> customerprofile = [
  Profile(
    customerid: "0", 
    username: "Poom", 
    income: 20000, 
    expense: 16000, 
    professionsalary: 1500, 
    risktolerance: Risktolerance.select, 
    age: 18, 
    retirementage: 40, 
    saving: 15000, 
    financialgoals: 12000000, 
    interests: "Human Traffic")
];