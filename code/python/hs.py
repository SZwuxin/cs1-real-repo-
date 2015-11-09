#assignment hs

#this code has a small problem, function l is supposed to print out
#the number of numbers in the operation, instead it counts the number
#of operations with each number. So f(4) is supposed to be 4 2 1 3,
#now it is 4 1 2 2 1 3. I couldn't figure out how to fix it
def f(n):
    l = 0
    while (n != 1):
        if (n != 1):
            if (n % 2 != 0):
                n = 3 * n + 1
            else:
                n = n // 2
            print(n)
            l = l+1
            print(l)
        else:
            l = l+1
            print (l)
        
   
       

    
        
    
    
