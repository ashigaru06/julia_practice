function checkbit(bit,i)#bit:チェックする値,i:i番目
    if bit & (1<<i) == (1<<i)
        return true
    else
        return false
    end
end

function main()
    n=5
    for bit=0:(1<<n)-1
        s=Vector{Int}(undef,0)
        for i=0:n
            if checkbit(bit,i)
                push!(s,i)
            end
        end
        print("$bit :{")
        for i=1:length(s)
            a=s[i]
            print("$a ")
        end
        println("}")
    end
end
main()
#=
$ julia bitcheck.jl 
0 :{}
1 :{0 }
2 :{1 }
3 :{0 1 }
4 :{2 }
5 :{0 2 }
6 :{1 2 }
7 :{0 1 2 }
8 :{3 }
9 :{0 3 }
10 :{1 3 }
11 :{0 1 3 }
12 :{2 3 }
13 :{0 2 3 }
14 :{1 2 3 }
15 :{0 1 2 3 }
16 :{4 }
17 :{0 4 }
18 :{1 4 }
19 :{0 1 4 }
20 :{2 4 }
21 :{0 2 4 }
22 :{1 2 4 }
23 :{0 1 2 4 }
24 :{3 4 }
25 :{0 3 4 }
26 :{1 3 4 }
27 :{0 1 3 4 }
28 :{2 3 4 }
29 :{0 2 3 4 }
30 :{1 2 3 4 }
31 :{0 1 2 3 4 }
=#