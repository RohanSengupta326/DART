void main() {
  var myFuture = Future(() {
    return 'hello';
  });
  // defining my own future which is rare, cause most of the http get, post returns future cause its inbuilt

  print('1');
  myFuture.then((_) {
    // flutter actually runs the futures at last cause it thinks future's code will take some time to run even if it doesnt
    // , it checks and runs all the synchronus codes first then it comes
    // for the asynchronus code, thats why future's print statements are running in the end
    print('3');
  }).then((_) {
    print('4');
  }).catchError((error) {
    print('do something about the error here');
  });
  print('2');
  // this runs before the future's print
}
