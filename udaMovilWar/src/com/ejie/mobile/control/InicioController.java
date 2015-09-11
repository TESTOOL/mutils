package com.ejie.mobile.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Aa17aRegistroMaestroController generated by UDA, 18-dic-2013 15:36:30.
 * 
 * @author UDA
 */

@RequestMapping(value = "/inicio")
public class InicioController {

	private static final Logger logger = LoggerFactory.getLogger(InicioController.class);

	/**
	 * Method 'getCreateForm'.
	 * 
	 * @param model
	 *            Model
	 * @return String
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String getCreateForm(Model model) {
		InicioController.logger.info("[GET - View] : inicio");
		return "inicio";
	}

}