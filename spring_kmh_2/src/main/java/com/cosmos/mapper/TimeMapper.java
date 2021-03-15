package com.cosmos.mapper;

import org.apache.ibatis.annotations.*;

public interface TimeMapper {

	@Select("SELECT sysdate FROM dual")
	public String getTime(); 
}
