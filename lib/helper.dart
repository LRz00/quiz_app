import 'question.dart';

class Helper{

  int _i = 0;

  List<Question> _q = [
    Question(question:'O metrô é um dos meios de transporte mais seguros do mundo.', answer: true),
    Question(question: 'A culinária brasileira é uma das melhores do mundo.', answer: true),
    Question(question: 'Vacas podem voar, assim como peixes utilizam os pés para andar.', answer: false),
    Question(question: 'A maioria dos peixes podem viver fora da água.', answer: false),
    Question(question: 'A lâmpada foi inventada por um brasileiro.', answer: false),
    Question(question:'É possível utilizar a carteira de habilitação de carro para dirigir um avião.',answer: false),
    Question(question: 'O Brasil possui 26 estados e 1 Distrito Federal.', answer: true),
    Question(question: 'Bitcoin é o nome dado a uma das moedas virtuais mais famosas.', answer: true),
    Question(question: '1 minuto equivale a 60 segundos.', answer: true),
    Question(question: '1 segundo equivale a 200 milissegundos.', answer: false),
    Question(question: 'O Burj Khalifa, em Dubai, é considerado o maior prédio do mundo.', answer: true),
    Question(question: 'Ler após uma refeição prejudica a visão humana.', answer: false),
    Question(question: 'O cartão de crédito pode ser considerado uma moeda virtual.', answer: false),
  ];

  String getQuestion(){
    return _q[_i].question;
  }
  bool getAnswer(){
    return _q[_i].answer;
  }

  void nextQuestion(){
    if(_i < _q.length - 1){
      _i++;
    }
  }
}