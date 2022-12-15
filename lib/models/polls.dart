class Polls {
  final String id;
  final String name;

  Polls({
    required this.id,
    required this.name,
  });
}

List<Polls> polls = [
  Polls(
    id: "1",
    name: "BOLÃO TESTE",
  ),
  Polls(
    id: "2",
    name: "BOLÃO 2",
  ),
];
