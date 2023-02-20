%This function converts the decimal values from Quantizer Function into
%Binary Values to be modulated transmitted over the channel
function Bit_Stream = Encoder(Quantized_Samples, n_levels)
  Bit_Stream = [];
  temp = dec2bin(0:n_levels-1, 8);
  
  for i = 1:length(Quantized_Samples)
      Bit_Stream = [Bit_Stream , temp(Quantized_Samples(i), :)-'0'];
  end

end
