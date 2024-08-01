import 'package:essence_app/constantes/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Mycontainer(
        state: true,
        child: Center(
          child: Text("Accueil"),
        ));
  }
}
