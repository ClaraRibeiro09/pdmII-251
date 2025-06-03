class Professor {
  int id;
  String codigo;
  String nome;
  List<Disciplina> disciplinas = [];

  Professor(this.id, this.codigo, this.nome);

  void adicionarDisciplina(Disciplina disciplina) {
    disciplinas.add(disciplina);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'codigo': codigo,
        'nome': nome,
        'disciplinas': disciplinas.map((d) => d.toJson()).toList(),
      };
}

class Aluno {
  int id;
  String nome;
  String matricula;

  Aluno(this.id, this.nome, this.matricula);

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'matricula': matricula,
      };
}

class Disciplina {
  int id;
  String descricao;
  int qtdAulas;

  Disciplina(this.id, this.descricao, this.qtdAulas);

  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'qtdAulas': qtdAulas,
      };
}

class Curso {
  int id;
  String descricao;
  List<Professor> professores = [];
  List<Disciplina> disciplinas = [];
  List<Aluno> alunos = [];

  Curso(this.id, this.descricao);

  void adicionarProfessor(Professor professor) {
    professores.add(professor);
  }

  void adicionarDisciplina(Disciplina disciplina) {
    disciplinas.add(disciplina);
  }

  void adicionarAluno(Aluno aluno) {
    alunos.add(aluno);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'professores': professores.map((p) => p.toJson()).toList(),
        'disciplinas': disciplinas.map((d) => d.toJson()).toList(),
        'alunos': alunos.map((a) => a.toJson()).toList(),
      };
}
