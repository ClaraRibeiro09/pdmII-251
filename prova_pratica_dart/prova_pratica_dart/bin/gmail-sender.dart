import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

Future<void> enviarEmail(String corpoDoEmail) async {
  final smtpServer = gmail('clara.ribeiro09@aluno.ifce.edu.br', 'gono znzl zgvc tyqn');

  final message = Message()
    ..from = Address('clara.ribeiro09@aluno.ifce.edu.br', 'Clara Ribeiro')
    ..recipients.add('taveira@ifce.edu.br')
    ..subject = 'Prova Prática 2 - JSON do Sistema Acadêmico'
    ..text = corpoDoEmail;

  try {
    final sendReport = await send(message, smtpServer);
    print('E-mail enviado com sucesso: $sendReport');
  } on MailerException catch (e) {
    print('Erro ao enviar e-mail: $e');
    for (var p in e.problems) {
      print('Problema: ${p.code}: ${p.msg}');
    }
  }
}
