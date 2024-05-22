function outputVector = reverse(inputVector)
  l = length(inputVector);
  vF = zeros(1, l);
  for(i=1:l)
    vF(i) = inputVector(l - i + 1);
  end 
  outputVector = vF;
endfunction
