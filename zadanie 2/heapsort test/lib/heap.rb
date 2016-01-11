def parent (i)
return i/2
end

def left (i)
if i==0
return 1
	else
	return 2*i
end
end



def right (i)
if i==0
return 2
	else
	return 2*i+1
end
end

 # ///////////////////////////////////////////////
def heapify (t, i, n)

l = left i
r = right i
if l < n && t[l] > t[i]
largest = l
	else
	largest = i	
end

if r<n && t[r] > t[largest]
largest =r;
end

if largest != i
x=t[i]
t[i]=t[largest]
t[largest]=x
heapify t, largest, n
end
puts ' END'
end

 # ///////////////////////////////////////////////
def build_heap (t)
5.downto(0){|i|
#puts "for"
heapify t,i,10
}
end


 # ///////////////////////////////////////////////
def heapsort (t)              
#puts "heapsort"
build_heap t
n =10

9.downto(1){|i|
x = t[0]
t[0]=t[i]
t[i]=x
n=n-1
heapify t,0,n
}
end

 # ///////////////////////////////////////////////
srand(Random.new_seed)
t = [10,9,8,7,6,5,4,3,2,1] 
i =0
(0..9).each do |i|
t[i]=rand(100)
end

(0..9).each do |i|
puts t[i]
end
heapsort t
puts "______________________"
(0..9).each do |i|
puts t[i]
end

