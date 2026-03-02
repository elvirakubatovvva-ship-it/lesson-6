import 'student.dart';
import 'teacher.dart';
import 'subject.dart';

void main() {
  print('--- Teacher Info ---');
  Teacher teacher = Teacher(
    fullName: 'John Brown',
    age: 40,
    isMarried: true,
    experience: 5,
  );
  teacher.introduce();

  print('\n--- Students Info ---');

  Student student1 = Student(
    fullName: 'Adam White',
    age: 17,
    isMarried: false,
    marks: {
      Subject.math: 90,
      Subject.physics: 85,
      Subject.english: 92,
      Subject.history: 88,
    },
  );
  student1.introduce();
  student1.showMarks();

  print('--------------------');

  Student student2 = Student(
    fullName: 'Alice Smith',
    age: 19,
    isMarried: false,
    marks: {
      Subject.math: 75,
      Subject.physics: 80,
      Subject.english: 95,
    },
  );
  student2.introduce();
  student2.showMarks();
}