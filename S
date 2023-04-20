#include <iostream>

using namespace std;

const int MAX_STUDENTS = 100;
const int MAX_GRADES = 10;

struct Grade {
    int units;
    int grade;
};

struct Student {
    Grade grades[MAX_GRADES];
    int num_grades;
    double avg;
};

int main() {
    
    int num_students, num_grades;
    cout << "Enter the number of students: ";
    cin >> num_students;
    cout << "Enter the number of grades per student: ";
    cin >> num_grades;
    
    Student list[MAX_STUDENTS];
    
    for (int i = 0; i < num_students; i++) {
        cout << "Enter the grades for student " << i+1 << ":" << endl;
        list[i].num_grades = num_grades;
        for (int j = 0; j < num_grades; j++) {
            cout << "Grade " << j+1 << " units: ";
            cin >> list[i].grades[j].units;
            cout << "Grade " << j+1 << " grade: ";
            cin >> list[i].grades[j].grade;
        }
    }
    
    
    for (int i = 0; i < num_students; i++) {
        int sum1 = 0, sum2 = 0;
        for (int j = 0; j < list[i].num_grades; j++) {
            if (list[i].grades[j].units == 0) break;
            sum1 += list[i].grades[j].units * list[i].grades[j].grade;
            sum2 += list[i].grades[j].units;
        }
        list[i].avg = (double)sum1 / sum2;
    }
    
    
    for (int i = 0; i < num_students; i++) {
        cout << "Student " << i+1 << " average grade: " << list[i].avg << endl;
    }
    
    return 0;
}
