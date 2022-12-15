class Poll {
  final String id;
  final String name;

  Poll({
    required this.id,
    required this.name,
  });
}

List<Poll> polls = [
  Poll(
    id: "1",
    name: "BOLÃO TESTE",
  ),
  Poll(
    id: "2",
    name: "BOLÃO 2",
  ),
];
