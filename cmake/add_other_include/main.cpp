#include<iostream>
#include <nlohmann/json.hpp>

using namespace std;
using json = nlohmann::json;

int main(){
   
   /*
    cout << "test json" << endl;
    json j;
    j.push_back("json_String");
    
    std::string new_str = j[0];
    cout << "new_str:" << new_str << endl;
    cout << j[0] << endl;
    bool is_b = j.at(2);
    cout << is_b << endl;
    j[1] = 2;
    is_b = j.at(2);
    cout << is_b << endl;
    */

    json j;
    j["id"] = "set_i2";
    j["status"] = 0;
    

    cout << j << endl;
    return 0;
}
