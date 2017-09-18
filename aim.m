function [out,Num,Var,Time]=aim(time)
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

for i=1:14
    for j=1:12
        if Num(i,j)==0 || Time(i,j)<500
            out(i,j)=-1;
            continue;
        end
        out(i,j)=Num(i,j).*sqrt(Var(i,j))./Time(i,j);
    end
end

for i=1:12
    tmp=out(:,i);
    tmp=tmp(tmp~=-1);
    tmmp(i)=mean(tmp);
end
  
out=tmmp;