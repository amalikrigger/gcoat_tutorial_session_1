import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List<List<String?>> board = [];
  int size = 3;
  String currentPlayer = 'X';
  String text = '';
  String winnerText = '';
  int validMovesCount = 0;

  void handleClick(int row, int col) {
    if (isValidMove(row, col)) {
      setState(() {
        board[row][col] = currentPlayer;
        validMovesCount = countValidMoves();
        if (checkWinner(row, col)) {
          winnerText = '$currentPlayer wins';
        } else if (checkDraw()) {
          winnerText = 'It is a draw';
        }
      });

      currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
    }
  }

  bool isValidMove(int row, int col) {
    return board[row][col] == null;
  }

  bool checkWinner(int row, int col) {
    var symbol = board[row][col];
    int i = 0;
    int x = 1;

    return board[row].every((cell) => cell == symbol) ||
        board.every((row) => row[col] == symbol) ||
        board.every((row) => row[i++] == symbol) ||
        board.every((row) => row[size - x++] == symbol);
  }

  bool checkDraw() {
    return board.every((row) => row.every((cell) => cell != null));
  }

  void resetGame() {
    setState(() {
      initializeBoard();
      currentPlayer = 'X';
      winnerText = '';
    });
  }

  int countValidMoves() {
    if (board.isEmpty) {
      return 0;
    }

    var count = 0;

    for (var row in board) {
      for (var col in row) {
        if (col == null) {
          count++;
        }
      }
    }

    return count;
  }

  @override
  void initState() {
    super.initState();
    initializeBoard();
  }

  void initializeBoard() {
    board = List.generate(size, (index) => List.generate(size, (_) => null));
    validMovesCount = countValidMoves();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
        actions: [
          IconButton(
            onPressed: () => resetGame(),
            icon: const Icon(Icons.sync),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Tic Tac Toe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: size, mainAxisSpacing: 2, crossAxisSpacing: 2),
            itemCount: size * size,
            itemBuilder: (BuildContext context, int index) {
              var row = index ~/ size;
              var col = index % size;

              return Square(
                  text: board[row][col] ?? '',
                  onTap: () => handleClick(row, col));
            },
          ),
          Text(
            "$currentPlayer's Turn",
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            '$validMovesCount valid moves left',
          ),
          const SizedBox(
            height: 10,
          ),
          Visibility(
            visible: winnerText.isNotEmpty,
            child: Text(
              winnerText,
            ),
          ),
        ],
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({super.key, required this.text, required this.onTap});

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 42,
            ),
          ),
        ),
      ),
    );
  }
}
