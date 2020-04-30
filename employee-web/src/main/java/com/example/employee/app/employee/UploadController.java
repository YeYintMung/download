package com.example.employee.app.employee;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.terasoluna.gfw.common.message.ResultMessages;

@Controller
@RequestMapping("article")
public class UploadController {
	@Value("${app.upload.allowableFileSize}")
    private int uploadAllowableFileSize;
	
	@Value("${app.upload.uploadDirectory}")
    private File uploadTemporaryDirectory;

    @ModelAttribute
    public FilesUploadForm setFileUploadForm() {
        return new FilesUploadForm();
    }

    @RequestMapping(value = "upload", method = RequestMethod.GET)
    public String uploadForm(@RequestParam("empid") String empID, Model model) {  
    	model.addAttribute("empid", empID);
        return "user/upload";
    }

    @RequestMapping(value = "uploadFiles", method = RequestMethod.POST)
    public String upload(FilesUploadForm form,
            BindingResult result, RedirectAttributes redirectAttributes) throws IOException {

        if (result.hasErrors()) {
            return "user/upload";
        }
        
        String empID = form.getEmpID();
    	String folderName = "employee_"+empID;
        
        Path path = Paths.get(uploadTemporaryDirectory + "\\" + folderName + "\\");
        if (!Files.exists(path)) {
            try {
                Files.createDirectories(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        for (FileUploadForm fileUploadForm : form.getFileUploadForms()) {

            MultipartFile uploadFile = fileUploadForm.getFile();
            
            if (!StringUtils.hasLength(uploadFile.getOriginalFilename())) {
                result.rejectValue(uploadFile.getName(), "e.xx.at.6002");
                return "user/upload";
            }

            if (uploadFile.isEmpty()) {
                result.rejectValue(uploadFile.getName(), "e.xx.at.6003");
                return "user/upload";
            }

            if (uploadAllowableFileSize < uploadFile.getSize()) {
                result.rejectValue(uploadFile.getName(), "e.xx.at.6004",
                        new Object[] { uploadAllowableFileSize }, null);
                return "user/upload";
            }
            
            //String uploadTemporaryFileId = UUID.randomUUID().toString();
            File uploadTemporaryFile = new File(path.toString(), uploadFile.getOriginalFilename());
            
            if(!uploadTemporaryFile.exists()) {
            	FileUtils.copyInputStreamToFile(uploadFile.getInputStream(), uploadTemporaryFile);
            }
            
            //uploadFile.transferTo(uploadTemporaryFile);
            
            redirectAttributes.addFlashAttribute(ResultMessages.success().add(
                    "i.xx.at.0001"));

        }

        return "redirect:/search";
    }
}
