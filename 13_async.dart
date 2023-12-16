void main() async {
  print('Init');

  try {
    final value = await httpGet('https://google.com');
    print(value);
  } on Exception catch (err) {
    print('Tenemos una Exception. $err');
  } catch (err) {
    print('Algo Terrible pasó. Error: $err');
  } finally {
    print('Fin del try/catch');
  }

  print('End');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

//   throw Exception('No hay parametros en el URL');

//   throw 'Error en la petición';
  return 'Respuesta valida';
}
