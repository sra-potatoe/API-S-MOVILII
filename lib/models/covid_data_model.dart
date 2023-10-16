class CovidData {
  final String state;
  final int cases;
  final int deaths;
  final int tests;

  CovidData({
    required this.state,
    required this.cases,
    required this.deaths,
    required this.tests,
  });

  factory CovidData.fromJson(Map<String, dynamic> json) {
    return CovidData(
      state: json['state'],
      cases: json['cases'],
      deaths: json['deaths'],
      tests: json['tests'],
    );
  }
}
