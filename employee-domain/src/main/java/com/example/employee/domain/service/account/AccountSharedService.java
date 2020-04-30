package com.example.employee.domain.service.account;

import com.example.employee.domain.model.Account;

public interface AccountSharedService {
	Account findOne(String username);
}
