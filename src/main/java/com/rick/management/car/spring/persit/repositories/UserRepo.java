package com.rick.management.car.spring.persit.repositories;


import com.rick.management.car.spring.persit.BaseRepo;
import com.rick.management.car.spring.persit.domain.User;

public interface UserRepo extends BaseRepo<User,Integer>,UserCustomRepo {

}
