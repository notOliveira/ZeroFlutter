class Organization {
  String nome;

  Organization({required this.nome});

  // Método para criar uma organização a partir de um documento Firestore
  factory Organization.fromDocument(Map<String, dynamic> doc) {
    return Organization(
      nome: doc['nome'],
    );
  }

  // Método para converter uma organização para um mapa para salvar no Firestore
  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
    };
  }
}
