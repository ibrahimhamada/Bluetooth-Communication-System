%This function converts the received bits into decimal values
function Decoded_Signal = Decoder(Recieved_Signal, Levels)
   Decoded_Signal = [];
   n = 8;
   Reciecved_C = sprintf('%d', Recieved_Signal);
   
   for i = 1 : n : length(Recieved_Signal)
       if (i + n <= length(Recieved_Signal))
           Decoded_Signal = [Decoded_Signal ,Levels(1+bin2dec(Reciecved_C(i:i+n-1)))];
       end
   end
end

