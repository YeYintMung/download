package com.example.employee.app.employee;

import java.io.File;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.employee.domain.model.Employee;
import com.example.employee.domain.service.employee.EmployeeService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Inject
    EmployeeService employeeService;
	
	@Inject
    Mapper beanMapper;
	
	@Value("${app.upload.uploadDirectory}")
    private File uploadTemporaryDirectory;
	
	@Value("${app.upload.downloadDirectory}")
    private File downloadDirectory;
	
	@ModelAttribute
	public UserForm setupForm() {
		return new UserForm();
	}
	
	@RequestMapping(value = "create", method = {RequestMethod.GET, RequestMethod.POST})
	public String createForm() {
	  return "user/register";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST, params = "redo")
    public String createRedo(UserForm form) {
        return "user/register";
    }
	
	@RequestMapping(value = "confirm", method = RequestMethod.POST)
	public String createConfirm(@Validated UserForm form, BindingResult result) {
	  if (result.hasErrors()) {
	    return "user/register";
	  }
	  return "user/confirm";
	}
	
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String create(@Validated UserForm form, BindingResult result) {
	  if (result.hasErrors()) {
	    return createRedo(form);
	  }
	  Employee employee = beanMapper.map(form, Employee.class);
	  
	  employee.setDob(isValid(form.getDob()));
	  employee.setJoindate(isValid(form.getJoindate()));

      employeeService.create(employee);
      
	  return "redirect:/user/register?complete";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.GET, params = "complete")
	public String createComplete() {
	  return "user/complete";
	}
	
	private String isValid(String date) {
		String dt;
		try {
			dt = LocalDate.parse(date).toString();
		} catch (Exception e) {
			dt = LocalDate.now().toString();
		}
		return dt;
	}
	
    @RequestMapping(value = "delete", method = RequestMethod.GET, params = "empid")
    public String view(@RequestParam("empid") String empID, Model model) {
        Employee employee = employeeService.findByID(empID);
        model.addAttribute("employee", employee);
        return "user/delete";
    }
    
    @RequestMapping(value = "detail", method = RequestMethod.GET, params = "empid")
    public String detail(@RequestParam("empid") String empID, Model model) {
        Employee employee = employeeService.findByID(empID);
        model.addAttribute("employee", employee);
        return "user/detail";
    }
    
    @RequestMapping(value = "deleteproc", params = "empid")
    public String delete(@RequestParam("empid") String empID, Model model) {
        employeeService.deleteProc(empID);
        return "redirect:/search";
    }

    @RequestMapping(value = "download", method = RequestMethod.GET, params = "empid")
    public void downloarProc(@RequestParam("empid") String empID, Model model,
    		HttpServletRequest request,
    		HttpServletResponse response) throws IOException {
    	String folderName = "employee_" + empID;
    	String fileName = empID + "_cv";

    	Path path = Paths.get(uploadTemporaryDirectory + "\\" + folderName + "\\");

        if (Files.exists(path)) {
        	DirectoryStream<Path> streams = Files.newDirectoryStream(path);
        	for (Path pt : streams) {
        		String fileName2 = FilenameUtils.removeExtension(pt.getFileName().toString());
        		if(fileName.equals(fileName2)){
        			String ext = FilenameUtils.getExtension(pt.toString());
            		response.setContentType(ext);
                    response.addHeader("Content-Disposition", "attachment; filename="+pt.getFileName());
            		Files.copy(pt, response.getOutputStream());
            		response.getOutputStream().close();
            		response.getOutputStream().flush();
            		break;
        		}
			}
        }
        response.sendRedirect(request.getContextPath() + "/search");
        //return "redirect:/account";
    }
}
