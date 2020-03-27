package net.csdcodes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    @Autowired
    private UserRepository repository;

    @GetMapping("/")
    private String emp(){
        return "redirect:/userList";
    }
    @PostMapping("/insertUser")
    private String insertUser(@ModelAttribute("user") User user){
        repository.save(user);
        return "redirect:/userList";
    }

    @GetMapping("/userList")
    private String allUsers(Model model){
       /* List<User> users = repository.findAll();*/
        model.addAttribute("users", repository.findAll());
        return "user";
    }

    @GetMapping("/deleteUser")
    private String deleteUser(@RequestParam("id") Long id){
        User user = repository.findUserById(id);
        repository.delete(user);
        return "redirect:/userList";
    }

    @GetMapping("/editUserForm")
    private String updateForm(@RequestParam("id") Long id, Model model){
        User user = repository.findUserById(id);
        if(user != null){
            model.addAttribute("user", user);
        }
        return "edit_user";
    }

    @PostMapping("/updateUser")
    private String updateUser(@ModelAttribute("user") User user){
        repository.save(user);
        return "redirect:/userList";
    }
}
