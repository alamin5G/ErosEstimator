package com.rupcharcha.service;

import org.springframework.stereotype.Service;

@Service
public class MatchImpl implements Match{
	
	public final String EROS_CALCULATOR_Formula = "FLAME";

	@Override
	public String calculateLove(String yourName, String matchName) {

		int yourNameAndMatchNameLength = (yourName+matchName).toCharArray().length;
		int formulaLength = EROS_CALCULATOR_Formula.toCharArray().length;
		
		int rem = yourNameAndMatchNameLength%formulaLength;
		char resultChar = EROS_CALCULATOR_Formula.charAt(rem);
		
		String matchResult = relationBetweenUs(resultChar);
		
		return matchResult;
	}

	@Override
	public String relationBetweenUs(char flameIndex) {
		String result = "";
		if (flameIndex == 'F') {
			result = AllConstant.F_MEANING;
		}else if (flameIndex == 'L') {
			result = AllConstant.L_MEANING;
		}else if (flameIndex == 'A') {
			result = AllConstant.A_MEANING;
		}else if (flameIndex == 'M') {
			result = AllConstant.M_MEANING;
		}else if (flameIndex == 'E') {
			result = AllConstant.E_MEANING;
		}
		
		return result;
	}

}
