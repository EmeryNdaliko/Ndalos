import 'package:essence_app/constantes/export.dart';

export 'package:flutter/cupertino.dart';
export 'package:desktop_window/desktop_window.dart';
export 'package:logger/logger.dart';
// export 'package:mongo_dart/mongo_dart.dart';
// import 'package:mongo_dart/mongo_dart.dart' ;

export '../pages/home.dart';
export '../pages/fournisseur.dart';
export '../pages/stock.dart';
export '../pages/rapport.dart';
export '../pages/utisateurs.dart';
export '../composants/mycontainer.dart';
export 'package:google_fonts/google_fonts.dart';
export '../composants/mytopbar.dart';
export '../composants/mydialogbox.dart';
export '../pages/parametres.dart';
export '../database/database.dart';
// export '../composants/mybutton.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);
