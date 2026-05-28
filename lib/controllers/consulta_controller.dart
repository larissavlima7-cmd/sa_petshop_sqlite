import 'package:sa_petshop_sqlite/database/database_helper.dart';
import 'package:sa_petshop_sqlite/model/consulta_model.dart';

class ConsultaController{
  //estabelecer as conexões com o db
  final _dbHelper = DatabaseHelper();

  // métodos do controller

  Future<bool> salvarConsulta(Consulta c) async{
    await _dbHelper.insertConsulta(c);
    return true;
  }

  Future<List<Consulta>> listarConsultas(int petId) async => await _dbHelper.getConsultasPorPet(petId);
  
}