import 'package:flutter/material.dart';
import 'package:flutter_application_1/injector_container.dart';
import 'package:flutter_application_1/src/features/articles/domain/usecases/get_article_usecase.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListTodos(),
        ),
      ),
    );
  }
}

class ListTodos extends StatefulWidget {
  // const ListTodos({super.key});
  final GetArticleUsecase _getArticleUsecase = getIt.get<GetArticleUsecase>();

  @override
  State<StatefulWidget> createState() => _ListTodosState();
}

class _ListTodosState extends State<ListTodos> {
  @override
  void initState() {
    super.initState();

    getTodos();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Text('Hello World!');
  }

  void getTodos() async {
    final result = await widget._getArticleUsecase();
    print(result);
  }
}
