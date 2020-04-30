package com.example.employee.app.employee;

import javax.inject.Inject;

import org.dozer.Mapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.employee.app.employee.SearchCriteriaForm;
import com.example.employee.domain.model.Employee;
import com.example.employee.domain.model.SearchData;
import com.example.employee.domain.service.employee.EmployeeService;

@Controller
@RequestMapping("search")
public class SearchController {
	@Inject
    EmployeeService employeeService;
	
	@Inject
    Mapper beanMapper;
	
	@ModelAttribute
	public SearchCriteriaForm setupForm() {
		return new SearchCriteriaForm();
	}

    @RequestMapping
    public String view(
    		SearchCriteriaForm form,
    		BindingResult result,
    		@PageableDefault(size = 5) Pageable pageable,
            Model model) {
    	
    	SearchData criteria = beanMapper.map(form,
                SearchData.class);
        
    	Page<Employee> page = employeeService.findAll(criteria, pageable);
    	model.addAttribute("SearchCriteriaForm", new SearchCriteriaForm());
    	model.addAttribute("page", page);
    	
        return "user/view";
    }
    
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String showList(
    		SearchCriteriaForm form,
    		BindingResult result,
    		@PageableDefault(size = 5) Pageable pageable,
            Model model) {
    	SearchData criteria = beanMapper.map(form,
                SearchData.class);
        
    	Page<Employee> page = employeeService.findAll(criteria, pageable);
    	model.addAttribute("SearchCriteriaForm", new SearchCriteriaForm());
    	model.addAttribute("page", page);
    	
    	return "user/view";
    }
}
