import 'package:flutter_web_poc/data/model/effort.dart';
import 'package:flutter_web_poc/data/repository.dart';

class MockRepository extends Repository {
  Future<List<Effort>> getSamples(int threshold, int size) async {
    const delay = Duration(seconds: 1);
    await Future.delayed(delay);

    List<Effort> samples = [];
    samples.add(Effort(0, 5));
    samples.add(Effort(1, 2));
    samples.add(Effort(2, 3));
    samples.add(Effort(3, 7));
    samples.add(Effort(5, 3));
    samples.add(Effort(6, 2));

    return samples;
  }
}
