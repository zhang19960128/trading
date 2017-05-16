function sell(stockname,stockcode,sellnumber,sellprice)
pathID=strcat(pwd,'\tradingdata\outcome.txt');
fileID=fopen(pathID,'a');
disp('´¢´æÍê±Ï');
fprintf(fileID,'date:%s\n',datestr(datetime('now')));
fprintf(fileID,'name:%s\n',stockname);
fprintf(fileID,'code:%s\n',stockcode);
fprintf(fileID,'number:%s\n',sellnumber);
fprintf(fileID,'price:%s\n',sellprice);
fprintf(fileID,'*****************\n');
end