function playRisk
  oAKilled = 0;
  dAKilled = 0;
  for i=1:100000

      oRolls = [floor(rand()*6) + 1,floor(rand()*6) + 1, floor(rand()*6) + 1];
      oRolls = reverse(sort(oRolls));
      dRolls = [floor(rand()*6) + 1, floor(rand()*6) + 1];
      dRolls = reverse(sort(dRolls));
      rolls = [oRolls; dRolls, 0];
      result = sum(rolls(1, 1:2) > rolls(2, 1:2));
    
      switch(result)
        case 0
          oAKilled += 2;
      case 1
          oAKilled++;
          dAKilled++;
        case 2
          dAKilled += 2;
      endswitch
  endfor

  oAKilled
  dAKilled
  
  attackingArmies_per_defendingArmies = oAKilled / dAKilled
  
endfunction