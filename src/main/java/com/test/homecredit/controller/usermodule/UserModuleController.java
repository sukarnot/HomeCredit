package com.test.homecredit.controller.usermodule;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.homecredit.dao.UserModuleDAO;
import com.test.homecredit.entity.UserModule;
import com.test.homecredit.entity.UserModuleResults;

@Controller
@RequestMapping("/userModule")
public class UserModuleController {

	@Autowired
	UserModuleDAO userModuleDAO;

	@RequestMapping(value = "/info", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, List<UserModuleResults>> getModule(@RequestParam(value = "userId") String userId) {

		List<UserModule> listUserModule = userModuleDAO.getUserModule(userId);

		List<UserModuleResults> listReturn = new ArrayList<UserModuleResults>();

		for (UserModule us : listUserModule) {
			UserModuleResults umr = new UserModuleResults();
			umr.setModuleOrder(us.getSeq());
			umr.setModuleName(us.getModule().getModuleName());
			listReturn.add(umr);
		}

		Map<String, List<UserModuleResults>> mapModule = new HashMap<String, List<UserModuleResults>>();
		mapModule.put("modules", listReturn);

		return mapModule;

	}
}
