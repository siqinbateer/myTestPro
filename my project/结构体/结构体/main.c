//
//  main.c
//  结构体
//
//  Created by pcbeta on 15-4-2.
//  Copyright (c) 2015年 pcbeta. All rights reserved.
//

#include <stdio.h>
struct Person{
    int age;
};

void change(struct Person p){
    p.age=9;

}

void test6(){
    struct Person pe = {28};
    struct Person *p;
    p=&pe;
    
    printf("%d",(*p).age);
    p->age = 34;
    printf("%d",p->age);
    
}

int main(int argc, const char * argv[]) {
    //这个结构体只能在函数内部使用
    struct Student{//定义结构体类型，系统不会分配内存，和类一样。
        char *name;//数组和字符串直接用指针定义
        int age;
        float height;
    
    };
    
    struct Student s = {"btr",25,1.8f};//定义一个结构体变量,分配内存,并按照定义的顺序初始化。
    s.age;
    s.name;//访问属性
    //test4();
    struct Person per = {23};
    change(per);
    //printf("%d",per.age);
    test6();
//    printf("%d",sizeof(s));
//    printf("%d",sizeof(int)+sizeof(float)+sizeof(char *));
    return 0;
}
void test(){
    struct Student{
        char *name;
        int age;
        float height;
        
    } stu = {23,"fdf",1.8f};
    struct {
        char *name;
        int age;
        float height;
        
    } stu2 = {23,"fdf",1.8f};

}


void test2(){
    struct Date{
        int year;
        int month;
        int day;
    };
    
    struct Student{
        char *name;
        struct Date brithday;
    
    };
    
    struct Student stu  = {"mj",{2009,10,12}};
    
    printf("%s",stu.name);
    printf("%d",stu.brithday.year);

}

void test4(){
    struct Student{
        char *name;
        int age;
        float height;
    };
    
    struct Student stus[2]={{"btr",12,1.8f},{"ccc",23,2.0f}};
    printf("%s",stus[0].name);

}


