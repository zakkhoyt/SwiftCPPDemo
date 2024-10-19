//
//  SomeCPPClass.cpp
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

#include "SomeCPPClass.hpp"
//#include "SwiftCPPDemo-Swift.h"

SomeCPPClass::SomeCPPClass(
   std::string name,
   u_int8_t age,
   u_int64_t tally
) {
    this->name = name;
    this->age = age;
    this->tally = tally;
}

u_int64_t SomeCPPClass::getTally() {
    return tally;
}

void SomeCPPClass::setTally(
    u_int64_t tally
) {
    this->tally = tally;
}
