import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      color: Color.fromRGBO(0, 0, 0, 0.9),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent[400],
              borderRadius: BorderRadius.circular(32),
            ),
            child: const Center(
              child: Text(
                'Я',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Войдите или зарегистрируйтесь',
            style: textStyle,
          ),
          const SizedBox(
            height: 32,
          ),
          _FormWidget(),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Войти с помощью',
            style: TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(0, 0, 0, 0.9),
            ),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    const linkTextStyle = TextStyle(
      fontSize: 14,
      color: Color(0xFF0044bb),
    );

    return Column(
      children: [
        TextField(
          style: TextStyle(
            fontSize: 24,
          ),
          decoration: InputDecoration(
            hintText: 'Логин или email',
            hintStyle: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.3),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Color(0xffb3b3b3),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        TextField(
          style: TextStyle(
            fontSize: 24,
          ),
          decoration: InputDecoration(
            hintText: 'Пароль',
            hintStyle: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.3),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Color(0xffb3b3b3),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 12,
            ),
          ),
          obscureText: true,
        ),
        const SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                const Color(0xFF0044bb),
              ),
              overlayColor: MaterialStateProperty.all(Colors.red[200]),
              visualDensity: VisualDensity.compact,
              padding: MaterialStateProperty.all(EdgeInsets.all(0)),
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            child: const Text('Не помню'),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Color(0xfffecd00)),
            foregroundColor:
                const MaterialStatePropertyAll(Color.fromRGBO(0, 0, 0, 0.9)),
            overlayColor: const MaterialStatePropertyAll(Color(0xffffdc60)),
            minimumSize: const MaterialStatePropertyAll(Size.fromHeight(44)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            side: const MaterialStatePropertyAll(
              BorderSide(
                color: Color(0xfffecd00),
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
          ),
          child: const Text(
            'Войти',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(Colors.white),
            foregroundColor:
                const MaterialStatePropertyAll(Color.fromRGBO(0, 0, 0, 0.9)),
            overlayColor: const MaterialStatePropertyAll(Color(0xfff7f7f7)),
            minimumSize: const MaterialStatePropertyAll(Size.fromHeight(44)),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            side: const MaterialStatePropertyAll(
              BorderSide(
                color: Color(0xffcccccc),
                style: BorderStyle.solid,
                width: 1,
              ),
            ),
          ),
          child: const Text(
            'Создать ID',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
