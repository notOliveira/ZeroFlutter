import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app/models/Organization.dart';

class OrganizationService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Adicione um método para adicionar uma nova organização ao Firestore
  Future<void> addOrganization(Organization organization) async {
    try {
      await _firestore.collection('organizations').add(organization.toMap());
    } catch (e) {
      // Lide com os erros de adição de organização aqui
      print('Erro ao adicionar organização: $e');
    }
  }

  // Adicione um método para recuperar todas as organizações do Firestore
  Stream<List<Organization>> getOrganizations() {
    return _firestore.collection('organizations').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Organization.fromDocument(doc.data())).toList();
    });
  }
}
