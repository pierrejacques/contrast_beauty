function [Num,Var,Time]=NVT(time)
load ÈËÒòÑÛ¶¯fixatonMat.mat;
for i=1:14
    for j=1:12
        mat=fixationMat{i,j};
        if size(mat)==[0,0]
            continue;
        end
        t=0;
        for k=1:length(mat(:,1))
            t=t+mat(k,2);
            if t>time
                break;
            end
        end
        mat=mat(1:k,:);
        Num(i,j)=length(mat(:,1));
        Var(i,j)=var(mat(:,2));
        Time(i,j)=mat(length(mat(:,1)),1)+mat(length(mat(:,1)),2)-mat(1,1);
    end
end
