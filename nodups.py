class Nodups
 def remove_dupes(string): 
   out = [] 
   seen = {} 
   for i in range(0, len(string)): 
       if string[i] in seen: 
           continue 
       seen[string[i]] = True 
       out.append(string[i]) 
   return "".join(out)
 end
end
