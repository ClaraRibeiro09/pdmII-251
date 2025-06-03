import 'dart:convert';
import 'package:prova_pratica_dart/classes.dart';
import 'gmail-sender.dart';

void main() async {
  // Instanciando disciplinas
  var poo = Disciplina(1, 'POO', 60);
  var redes = Disciplina(2, 'Redes de Computadores', 40);

  // Instanciando professores
  var profCarlos = Professor(1, 'P001', 'Carlos Silva');
  profCarlos.adicionarDisciplina(poo);

  var profAna = Professor(2, 'P002', 'Ana Lima');
  profAna.adicionarDisciplina(redes);

  // Instanciando alunos
  var alunoJoao = Aluno(1, 'João Pereira', '2023111');
  var alunoMaria = Aluno(2, 'Maria Souza', '2023112');

  // Instanciando curso
  var curso = Curso(101, 'Engenharia de Software');
  curso.adicionarProfessor(profCarlos);
  curso.adicionarProfessor(profAna);
  curso.adicionarDisciplina(poo);
  curso.adicionarDisciplina(redes);
  curso.adicionarAluno(alunoJoao);
  curso.adicionarAluno(alunoMaria);

  // Gerando JSON do curso (em cascata)
  String jsonFinal = const JsonEncoder.withIndent('  ').convert({'curso': curso.toJson()});


  // Enviando por e-mail
  await enviarEmail(jsonFinal);
}
