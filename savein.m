function buy(stockname,stockcode,buynumber,buyprice)
pathID=strcat(pwd,'\tradingdata\income.txt');
fileID=fopen(pathID,'a');
disp('´¢´æÍê±Ï');
fprintf(fileID,'date:%s\n',datestr(datetime('now')));
fprintf(fileID,'name:%s\n',stockname);
fprintf(fileID,'code:%s\n',stockcode);
fprintf(fileID,'number:%s\n',buynumber);
fprintf(fileID,'price:%s\n',buyprice);
fprintf(fileID,'*****************\n');
end