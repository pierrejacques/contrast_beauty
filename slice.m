function [ans,ff]=slice(tmp,st,ed)
ans=[];
l=length(tmp(:,1));
for i=1:l
    if tmp(i,1)>=st
        break;
    end
end
ff=tmp(i,1)-st;
num=1;
for j=i:l
    if tmp(j,1)<=ed
        ans(num,:)=tmp(j,:);
            num=num+1;
    end
end