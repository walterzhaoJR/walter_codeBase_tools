/*
 * String
 */

#pragma once

#include <iostream>
#include <stdint.h>
#include <string.h>

using namespace std;
namespace my_string
{
class String
{
public:
  //default construct
  String(char* str = NULL);

  //desstruct
  ~String();

  //copy construct
  String(const String& str_obj) : m_data(new char[str_obj.Size() + 1]) {
    cout << "copy construct" << endl;
    strcpy(m_data, str_obj.m_data);
  }
  
  uint64_t Size() const { return strlen(m_data); }

  void Swap(String str_obj) { std::swap(m_data, str_obj.m_data); }

  String& operator=(const String& str_obj);

  friend ostream& operator<<(ostream& os, const String& str_obj);
private:
  char* m_data = NULL;
};

String::String(char* str)
{
  if (NULL == str) {
    m_data = new char[1];
    m_data = '\0';
  } else {
    m_data = new char[strlen(str) + 1];
    strcpy(m_data, str);
  }
  
  cout << "default construct" << endl;
}

String::~String()
{
  cout << "destruct --> " << m_data << endl;
  
  delete[] m_data;
}

String& String::operator=(const String& str_obj)
{
  cout << "operator =" << endl;
  /* method 1
  String tmp(str_obj);//copy construct
  Swap(tmp);//copy construct
  return *this;
  */

  //methon 2
  if (NULL == &str_obj) {
    return *this;
  } else {
    delete []m_data;
    m_data = new char[str_obj.Size() + 1];
    strcpy(m_data, str_obj.m_data);
  }
}

ostream& operator<<(ostream& os, const String& str_obj)  
{
  cout << "[operator<<]" << endl;
  os << str_obj.m_data;
  return os;
}
}
