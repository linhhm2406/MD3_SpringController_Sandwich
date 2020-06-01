package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
@RequestMapping("/")
class MenuController {

    @GetMapping("/showUI")
    public ModelAndView showUI() {
        return new ModelAndView("showUI");
    }

    @PostMapping("/submit")
    public ModelAndView save(@RequestParam String[] condiment) {
        ArrayList list = new ArrayList();
        for (int i = 0; i < condiment.length; i++) {
            list.add(condiment[i]);
        }
        ModelAndView modelAndView = new ModelAndView("showUI");
        modelAndView.addObject("list", list);
        return modelAndView;
    }
}
