def remove_dupes(string): 
   out = [] 
   seen = {} 
   for i in range(0, len(string)): 
       if string[i] in seen: 
           continue 
       seen[string[i]] = True 
       out.append(string[i]) 
   return "".join(out)

aa = "When in the course of human events"
print remove_dupes(aa)
