for i=1:14
    tmpe=event_rec{i};
    tmpf=fixation_rec{i};
    l=length(tmpe(:,1));
    for j=1:l
        if tmpe(j,2)~=8 continue;
        end
        st=tmpe(j,1);
        for k=j+1:j+4
            if tmpe(k,2)==16
                break;
            end
        end
        ed=tmpe(k,1);
        picnum=tmpe(j,3);
        if picnum>0
            [fixationMat{i,picnum},firstFixTime(i,picnum)]=slice(tmpf,st,ed);
        end
    end
end
        