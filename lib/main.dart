import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const InfoApp());
}

class InfoApp extends StatelessWidget {
  const InfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Info App',
            style: GoogleFonts.robotoCondensed(
              textStyle: Theme.of(context).textTheme.displaySmall,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.amber,
          elevation: 4,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Um breve guia sobre o que foi proposto neste módulo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //Primeira Parte
                Text(
                  '1. Instalação do Flutter',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Nessa aula foi ensinado como fazer a instalação do Flutter. Lembrando que o framework da Google pode ser instalado nos sistemas operacionais Windows, Linux e Mac. Na videoaula, tomou-se como foco o SO Windows.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                //Segunda Parte
                Text(
                  '2. Configurar o Ambiente',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Nessa aula foi ensinado como configurar o Flutter em nosso computador/laptop. Como dito anteriormente, o Flutter está disponível para Windows, Linux e Mac, mas cada sistema tem uma forma de configuração, sendo Linux e Mac mais semelhantes por conta do uso dos comandos bash.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                //Terceira Parte
                Text(
                  '3. Criar um Projeto',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Nessa aula foi breve tutorial de como começar um projeto, quais os comandos necessários, e como controlar a forma como será criado o template, já que podemos escolher entre Java e Kotlin para Android e Objective-C e Swift para iOS.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                //Quarta Parte
                Text(
                  '4. Subir Nosso Projeto Para o Github',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Nessa aula foi mostrado um breve tutorial de como subir nosso mais novo projeto para o Github. Se você já viu as aulas da Elidiana sobre Git e Github, então não terá problema algum e será mais fácil de assimilar os comandos.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
