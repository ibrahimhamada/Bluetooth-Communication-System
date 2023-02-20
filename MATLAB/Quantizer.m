%This function implements a Quantizer that will be used to transform the Samples 
%with Continuous values of samples into Samples with Discrete values.
function [Quantized_Samples, Levels] = Quantizer(Samples, n_bits)

    maxi = max(Samples);
    mini = min(Samples);
    L = 2^n_bits;
    Quantized_Samples = zeros(1,length(Samples));
    level_sep =(maxi - mini)/L; 
    level_1 = [0:level_sep: maxi];
    level_2 = [0-level_sep: -level_sep : mini];
    Levels = [flip(level_2) level_1 ];
    transitions = Levels + level_sep/2;
    
    for i = 1:length(Samples)
        if Samples(i)> transitions(L)
            Quantized_Samples(i) = L;
        else
            for j=1:L
                if Samples(i)<transitions(j)
                   Quantized_Samples(i) = j;
                    break
                end
            end
        end
    end
end
