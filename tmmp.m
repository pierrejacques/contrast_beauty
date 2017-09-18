for i=1:14
       tmp=[];
       num=pics(i);
       if num<10
            str=['0',num2str(num)]
       else
            str=num2str(num);
       end
       tmp1=eval(['eventTime',str]);
       tmp2=eval(['EventKey',str]);
       tmp3=event{i};
       tmp(:,1)=tmp1;
       tmp(:,2)=tmp2;
       tmp(:,3)=tmp3;
       event_rec{i}=tmp;
end