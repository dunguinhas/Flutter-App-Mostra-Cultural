import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Definimos o texto e as cores que queremos usar
    const String titulo = "bienvenido!!";
    const List<Color> cores = [
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Color.fromARGB(255, 21, 0, 211),
      Color.fromARGB(255, 21, 0, 211),
      Color.fromARGB(255, 21, 0, 211),
      Color.fromARGB(255, 21, 0, 211)
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Paraguai Culture', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false, // Remove o botão de voltar automático
        backgroundColor: const Color.fromARGB(255, 121, 15, 15),
      ),
      body: Container(
        color: const Color.fromARGB(255, 88, 0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 2. Implementação do RichText
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                  children: List.generate(titulo.length, (index) {
                    return TextSpan(
                      text: titulo[index],
                      style: TextStyle(color: cores[index % cores.length]),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 40),
              // BOTÃO 1
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 21, 0, 211),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {
                  // Navega para a Primeira Página
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrimeiraPagina()),
                  );
                },
                child: const Text('História do Paraguai', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 20), // Espaço entre os botões
              // BOTÃO 2
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                onPressed: () {
                  // Navega para a Segunda Página
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SegundaPagina()),
                  );
                },
                child: const Text('Cultura Paraguaia', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// PRIMEIRA PÁGINA DE DESTINO
class PrimeiraPagina extends StatelessWidget {
  const PrimeiraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 0, 77),
      appBar: AppBar(title: const Text('História do Paraguai', style: TextStyle(color: Colors.white)),
      automaticallyImplyLeading: false, // Remove o botão de voltar automático
      backgroundColor: const Color.fromARGB(255, 12, 0, 122),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Antes da chegada dos europeus, o território que hoje corresponde ao Paraguai era habitado por diversos povos indígenas, principalmente os guaranis. Eles viviam em comunidades organizadas, cultivavam alimentos como mandioca, milho e feijão e mantinham uma forte ligação com a natureza, suas crenças e tradições.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'No século XVI, os espanhóis chegaram à região e fundaram a cidade de Assunção, em 1537. Diferentemente do que ocorreu em outras áreas da América do Sul, houve uma grande mistura entre colonizadores e indígenas, o que contribuiu para a preservação de muitos elementos da cultura guarani ao longo dos séculos.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Entre os séculos XVII e XVIII, os jesuítas criaram comunidades chamadas missões ou reduções, onde os indígenas aprendiam agricultura, música, artesanato e outras atividades. Essas missões se tornaram importantes centros culturais e deixaram um legado histórico que ainda pode ser visto em ruínas preservadas na região.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'O Paraguai conquistou sua independência da Espanha em 1811. Após a independência, o país buscou manter sua autonomia e se desenvolver de forma mais isolada. Nesse período, José Gaspar Rodríguez de Francia teve papel fundamental na organização e consolidação do novo Estado paraguaio.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Mais tarde, durante o governo de Carlos Antonio López, o país passou por um processo de modernização, com investimentos em infraestrutura e desenvolvimento econômico. Seu filho, Francisco Solano López, assumiu o poder posteriormente e liderou o Paraguai durante a Guerra do Paraguai, travada entre 1864 e 1870 contra Brasil, Argentina e Uruguai. O conflito causou grandes perdas humanas e econômicas, marcando profundamente a história e a identidade nacional do país.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Após a guerra, o Paraguai precisou reconstruir sua economia e suas instituições. Anos depois, enfrentou a Bolívia na Guerra do Chaco, entre 1932 e 1935, conquistando a vitória e fortalecendo o sentimento nacionalista entre a população.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Entre 1954 e 1989, o país viveu sob a ditadura de Alfredo Stroessner, período marcado pelo autoritarismo político e pela realização de grandes obras de infraestrutura. Com o fim da ditadura, o Paraguai iniciou uma nova fase democrática, baseada em eleições regulares e no fortalecimento de suas instituições, processo que continua até os dias atuais.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), // Volta para a tela anterior
              child: const Text('Voltar' , style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    )
    );
  }
}

// SEGUNDA PÁGINA DE DESTINO
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 121, 15, 15),
      appBar: AppBar(title: const Text('Cultura Paraguaia', style: TextStyle(color: Colors.white)),
      automaticallyImplyLeading: false, // Remove o botão de voltar automático
      backgroundColor: const Color.fromARGB(255, 88, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'A cultura paraguaia é marcada pela música tradicional, especialmente a guarânia, de ritmo mais calmo, e a polca paraguaia, mais animada. A harpa paraguaia é um dos principais símbolos musicais do país e está presente em muitas apresentações folclóricas.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Entre as danças típicas, destaca-se a dança das garrafas, na qual as dançarinas equilibram garrafas na cabeça enquanto dançam. Outras danças populares incluem a galopa e diferentes versões da polca paraguaia.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              "O artesanato também tem grande importância cultural. O ñandutí, uma renda artesanal delicada, e o ao po'i, um tecido tradicional, são alguns dos trabalhos mais valorizados, além de peças feitas em cerâmica e madeira.",
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'A culinária do Paraguai utiliza ingredientes como milho, mandioca, queijo e carne. Entre os pratos mais conhecidos estão a Chipa, a Sopa Paraguaia, o Mbejú e o Bori Bori. Já o tererê, feito com erva-mate e água gelada, é considerado a bebida nacional e faz parte do dia a dia dos paraguaios.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'A mitologia guarani é rica em lendas e personagens, como o Pombero, o Jasy Jateré e o Kurupí, que são transmitidos de geração em geração e fazem parte do imaginário popular.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'O país também possui uma arquitetura diversificada, que mistura construções coloniais, igrejas históricas, ruínas jesuíticas e edifícios modernos. Entre os principais destinos turísticos estão Assunção, Ciudad del Este, Encarnación, a Usina de Itaipu, as ruínas jesuíticas e os Saltos del Monday.',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), // Volta para a tela anterior
              child: const Text('Voltar' , style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    )
    );
  }
}