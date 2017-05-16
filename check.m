pathIDin=strcat(pwd,'\tradingdata\income.txt');
pathIDout=strcat(pwd,'\tradingdata\outcome.txt');
fileIDin=fopen(pathIDin,'r');
fileIDout=fopen(pathIDout,'r');
strdate='date:*';
strname='name:*';
strcode='code:*';
strnumber='number:*';
strprice='price:*';
stockcodeoutlist={};
stocknameoutlist={};
stocknumoutlist=[];
stockoutmoneylist=[];
stockinmoneylist=[];
line=fgets(fileIDout);
while ischar(line)
     matchdate=regexp(line,strdate,'split');
     line=fgets(fileIDout);
     matchname=regexp(line,strname,'split');
     line=fgets(fileIDout);
     matchcode=regexp(line,strcode,'split');
     line=fgets(fileIDout);
     matchnumber=regexp(line,strnumber,'split');
     line=fgets(fileIDout);
     matchprice=regexp(line,strprice,'split');
     if(str2num(matchprice{2})*str2num(matchnumber{2})*2.5*10^(-5)>5)
         fee=str2num(matchprice{2})*str2num(matchnumber{2})*2.5*10^(-5)+str2num(matchprice{2})*str2num(matchnumber{2})*0.001;
     else
         fee=5+str2num(matchprice{2})*str2num(matchnumber{2})*0.001;
     end
     money=str2num(matchprice{2})*str2num(matchnumber{2})-fee;
     match=strcmp(stockcodeoutlist,matchcode{2});
     if length(match)==0 
         stockcodeoutlist=[stockcodeoutlist,matchcode{2}];
         stocknameoutlist=[stocknameoutlist,matchname{2}];
         stockoutmoneylist=[stockoutmoneylist,money];
         stocknumoutlist=[stocknumoutlist,str2num(matchnumber{2})];
     elseif sum(match)==0
         stockcodeoutlist=[stockcodeoutlist,matchcode{2}];
         stocknameoutlist=[stocknameoutlist,matchname{2}];
         stockoutmoneylist=[stockoutmoneylist,money];
         stocknumoutlist=[stocknumoutlist,str2num(matchnumber{2})];
     else
         tick=find(strcmp(matchcode{2},stockcodeoutlist)==1,1);
         stockoutmoneylist(tick)=stockoutmoneylist(tick)+money;
         stocknumoutlist(tick)=stocknumoutlist(tick)+str2num(matchnumber{2});
     end
     line=fgets(fileIDout);
     line=fgets(fileIDout);
end
line=fgets(fileIDin);
profit=0;
while ischar(line)
     matchdate=regexp(line,strdate,'split');
     line=fgets(fileIDin);
     matchname=regexp(line,strname,'split');
     line=fgets(fileIDin);
     matchcode=regexp(line,strcode,'split');
     line=fgets(fileIDin);
     matchnumber=regexp(line,strnumber,'split');
     line=fgets(fileIDin);
     matchprice=regexp(line,strprice,'split');
     if(str2num(matchprice{2})*str2num(matchnumber{2})*2.5*10^(-5)>5)
         fee=str2num(matchprice{2})*str2num(matchnumber{2})*2.5*10^(-5)
     else
         fee=5;
     end
     if sum(strcmp(stockcodeoutlist,matchcode{2}))==1
         tick=find(strcmp(stockcodeoutlist,matchcode{2})==1,1);
         if stocknumoutlist(tick)>=str2num(matchnumber{2})
            stocknumoutlist(tick)=stocknumoutlist(tick)-str2num(matchnumber{2});
            stockoutmoneylist(tick)=stockoutmoneylist(tick)-str2num(matchnumber{2})*str2num(matchprice{2})-fee;
         elseif stocknumoutlist(tick)==0
                 stockoutmoneylist(tick)=stockoutmoneylist(tick);
         else
                 stocknumoutlist(tick)=0;
                 stockoutmoneylist(tick)=stockoutmoneylist(tick)-stocknumoutlist(tick)*str2num(matchprice{2})-fee;
         end
     end    
     line=fgets(fileIDin);
     line=fgets(fileIDin);  
end
for i=1:1:length(stockoutmoneylist)
    str=sprintf('stockname:%s profits:%f',stocknameoutlist{i},stockoutmoneylist(i));
    disp(str);
end
disp('all the profits:');
disp(sum(stockoutmoneylist));
fclose(fileIDout);
fclose(fileIDin);