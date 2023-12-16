void main() {
  print('Init');
  httpGet('https://google.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  print('End');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    // throw 'Error en la petición http';
    return 'Respuesta de la petición http';
  });
}
