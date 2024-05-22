function sortedVector = sort(inputVector)
  l = length(inputVector);
  v = inputVector;
  for(i=1:l-1)
    for(j=1:l-1)
      if(v(j) > v(j+1))
        temp = v(j);
        v(j) = v(j+1);
        v(j+1) = temp;
      end 
    end 
  end
  sortedVector = v;
endfunction
