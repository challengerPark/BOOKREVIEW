package com.eco.test.member;

import java.util.HashMap;
import java.util.Map;

public interface MemberService {

	MemberVo login(HashMap<String, String> loginMap);

}
