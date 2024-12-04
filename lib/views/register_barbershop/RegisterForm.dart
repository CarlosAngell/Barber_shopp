import 'package:flutter/material.dart';
import 'RegisterLocation.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Adiciona rolagem vertical
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Padding geral
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alinhamento à esquerda
          children: [
            // Título do formulário
            Text(
              'Formulário',
              style: TextStyle(
                  color: const Color.fromARGB(255, 102, 101, 95),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 30), // Espaçamento após o título

            // Nome da Loja
            Text(
              'Nome da Barbearia:',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Digite o nome da loja:',
                hintStyle: TextStyle(color: Colors.white54, fontSize: 11),
                filled: true,
                fillColor: Color.fromARGB(26, 27, 31, 1),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: const Color.fromRGBO(38, 39, 43, 1)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30), // Espaçamento ajustado para 30px

            // Nome Completo
            Text(
              'Seu Nome Completo:',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Digite seu nome completo:',
                hintStyle: TextStyle(color: Colors.white54, fontSize: 11),
                filled: true,
                fillColor: Color.fromARGB(26, 27, 31, 1),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: const Color.fromRGBO(38, 39, 43, 1)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30), // Espaçamento ajustado para 30px

            // CPF
            Text(
              'CPF:',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Digite seu CPF:',
                hintStyle: TextStyle(color: Colors.white54, fontSize: 11),
                filled: true,
                fillColor: Color.fromARGB(26, 27, 31, 1),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: const Color.fromRGBO(38, 39, 43, 1)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 6, horizontal: 10.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30), // Espaçamento ajustado para 30px

            // CNPJ
            Text(
              'CNPJ:',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Digite o CNPJ:',
                hintStyle: TextStyle(color: Colors.white54, fontSize: 11),
                filled: true,
                fillColor: Color.fromARGB(26, 27, 31, 1),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: const Color.fromRGBO(38, 39, 43, 1)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 6, horizontal: 10.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30), // Espaçamento ajustado para 30px

            // RegisterLocation - Colocando logo acima do botão de envio
            RegisterLocation(),

            // Espaço entre a imagem e os botões
            SizedBox(height: 20),

            // Row com os dois botões: Cancelar e Enviar
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Espaça os botões
              children: [
                // Botão de Cancelar
                ElevatedButton(
                  onPressed: () {
                    // Ação ao pressionar o botão Cancelar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Cadastro cancelado!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Cancelar', style: TextStyle(fontSize: 18)),
                ),

                // Botão de Enviar
                ElevatedButton(
                  onPressed: () {
                    // Ação ao pressionar o botão Enviar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Formulário enviado com sucesso!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: (const Color.fromRGBO(99, 47, 47,
                        1)), // Cor do fundo do botão alterada para azul
                  ),
                  child: Text('Confirmar', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


