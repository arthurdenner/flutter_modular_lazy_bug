abstract class ISomeService {
  void doSomething();
}

class SomeService implements ISomeService {
  SomeService() {
    init();
  }

  void doSomething() {
    print('SomeService something');
  }

  void init() {
    print('SomeService created');
  }
}
