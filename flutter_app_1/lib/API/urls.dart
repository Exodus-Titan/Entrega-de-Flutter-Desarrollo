class Urls {

  static int idRequeridoCurso = 0;
  static int idRequeridoLeccion = 0;
  static String url = 'https://638bb09681df38ab346e4bd8.mockapi.io/api/cursos';
  static String cursosEndPoint = '/FlutterCurso';
  static String cursoEspecificoEndPoint = '/FlutterCurso/$idRequeridoCurso';
  static String leccionesDeUnCursoEndPoint = '/FlutterCurso/$idRequeridoCurso/Leccion';
  static String leccionEspecificaDeUnCursoEndPoint = '/FlutterCurso/$idRequeridoCurso/Leccion/$idRequeridoLeccion';

}