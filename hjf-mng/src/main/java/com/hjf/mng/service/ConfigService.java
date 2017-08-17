package com.hjf.mng.service;

import com.hjf.mng.entity.ConfigSystem;

public interface ConfigService {
	public ConfigSystem getConfigSystem();
	public void updateConfigSystem(ConfigSystem config);
}
