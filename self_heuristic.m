
job0 = [3.4	2.8	2.8	2.2];
job1 = [3.4	2.8	2.8	4];
job2 = [2.2	1.6	2.2	2.2];
job3 = [4	2.8	2.8	1.6];
job4 = [2.2	2.8	1	3.4];

m = 4;
arr = [0 0 0 0 0];
flagbit = 0;

j0 = slope(job0);
j1 = slope(job1);
j2 = slope(job2);
j3 = slope(job3);
j4 = slope(job4);

guess_sequence = [j0 j1 j2 j3 j4];
suboptimal_sequqence = sort(guess_sequence);
for i = 1:5
    if (j0 == suboptimal_sequqence(i)) && (arr(i) == 0 && flagbit == 0)
        arr(i) = 0;
        flagbit = 1;
    end
end
flagbit = 0;

for i = 1:5
    if (j1 == suboptimal_sequqence(i)) && (arr(i) == 0 && flagbit == 0)
        arr(i) = 1;
        flagbit = 1;
    end
end
flagbit = 0;


for i = 1:5
    if (j2 == suboptimal_sequqence(i)) && (arr(i) == 0 && flagbit == 0)
        arr(i) = 2;
        flagbit = 1;
    end
end
flagbit = 0;

for i = 1:5
    if (j3 == suboptimal_sequqence(i)) && (arr(i) == 0 && flagbit == 0)
        arr(i) = 3;
        flagbit = 1;
    end
end
flagbit = 0;

for i = 1:5
    if (j4 == suboptimal_sequqence(i)) && (arr(i) == 0 && flagbit == 0)
        arr(i) = 4;
        flagbit = 1;
    end
end
flagbit = 0;



arr = arr 





function index = slope(x)
    newarr = [3 1 -1 -3];
    index = x*transpose(newarr);
end
    
