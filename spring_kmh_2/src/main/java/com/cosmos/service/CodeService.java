package com.cosmos.service;


import org.springframework.stereotype.*;

import com.cosmos.dto.*;


@Component
public interface CodeService {
	Code[] getCodeList(String category) ;
}
