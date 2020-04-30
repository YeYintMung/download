package com.example.employee.domain.repository.account;

import com.example.employee.domain.model.Account;

public interface AccountRepository {
	Account findOne(String username);
}
