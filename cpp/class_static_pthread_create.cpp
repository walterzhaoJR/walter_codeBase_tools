
#include<iostream>
#include<pthread.h>


using namespace std;


template <typename TYPE, void (TYPE::*_RunThread)() >  
void* _thread_t(void* param)//线程启动函数，声明为模板函数  
{     
 	TYPE* This = (TYPE*)param;     
 	This->_RunThread();     
 	return NULL;  
 }  
   
 class MyClass  
 {  
 public:    
 	MyClass();   
 	void _RunThread(); 
 	void print(); 

 	void run();
   
 private:    
 	pthread_t tid;    
 };  
   
 void MyClass::_RunThread()  
 {      
 	cout << "_RunThread" << endl;  
 	this->print();  
 }  

 void MyClass::print()
 {
 	cout << "ok" << endl;
 }
   
 MyClass::MyClass()  
 {     
 	 
 }    

void MyClass::run()
{
	cout << "run" << endl;
	cout << "tid:" << tid << endl;
	int ret = pthread_create(&tid, NULL, _thread_t<MyClass, &MyClass::_RunThread>, NULL); 
	pthread_join(tid,NULL);
	cout << "ret" << ret << endl;
}  

 int main()
 {
 	MyClass *my = new MyClass();
 	my->run();
 } 