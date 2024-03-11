import 'course.dart';
import 'courseLevel.dart';
import 'lesson.dart';
import 'user.dart'; 

void main() {
   var lesson1 = Lesson('C# ',120);
   var lesson2 = Lesson('ANGULAR',100);

   var angularCourse = Course.create('C# + ANGULAR Training', 'Engin Demiroğ', [lesson1,lesson2],CourseLevel.Indermetiate);

   User user = User(
    username:"zehra",
    email:"zehra@example.com",
   );

   angularCourse.printCourseInfo();
   angularCourse.lessons.forEach((Lesson) {
    Lesson.printLessonInfo();
    });
   user.printUserInfo();
}