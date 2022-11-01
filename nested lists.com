if __name__ == '__main__':
    students = []
    score_student = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students.append([name,score])
        score_student.append(score)
    score_student = sorted(set(score_student))[1]
    name =[ i[0] for i in students if score_student == i[1] ]
    print("\n".join(sorted(name)))