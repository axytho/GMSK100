clear
close all

%% Settings

% baseband modeling parameters
use_fec = false; % enable/disable forward error correction
bt = 0.5; % gaussian filter bandwidth
snr = 40; % signal to noise ratio
osr = 64; % oversampling ratio used both in analog and digital

% RF modeling parameters
use_rf = true; % enable/disable RF model
adc_levels = 10; % number of ADC output codes
br = 100; % bit rate (bit/s)
fc = 20.50e3; % carrier frequency (Hz)
fs = 20000e3; % sample frequency (Hz) % sample frequency (Hz) (50 kHz is what is outputted by the analog)

% plotting parameters
plot_raw_data = true;
plot_rf_signal = true;

% input message
message_in = 'Hello World!';

%% Modulation

% varicode encoding
plain_in = varicode_encode(message_in);
%plain_in = [0, 1, 0].';

% FEC encoding (optional)
if use_fec
    encoded_in = fec_encode(plain_in);
else
    encoded_in = plain_in;
end

% GMSK modulation
complex_envelope_in = gmsk_modulate(encoded_in, bt, osr);

% upmixing
if use_rf
    signal_in = iq_upmixer(complex_envelope_in, osr, br, fc, fs);
end

%% Channel model

% add noise
if use_rf
    signal_out = signal_add_noise(signal_in, snr, br, fs);
else
    complex_envelope_out = complex_envelope_add_noise(complex_envelope_in, snr, osr);
end

%% Demodulation

if use_rf
    %+sin(1/10*2*3.1415*(1:length(signal_out)).'
%     [psd, w] = pwelch(signal_out));
%     plot(w/pi, psd);
    % automatic gain control
    signal_agc = agc_gain(signal_out);
    perfect_signal_agc = agc_gain(signal_in);
    % quantization
    signal_quantized = quantize(signal_agc, adc_levels);
    perfect_signal_quantized = quantize(perfect_signal_agc, adc_levels);
    
    
%     noiseAnalog = sum(abs(signal_quantized - perfect_signal_quantized).^2);
%     signal_quantizedIndB = 10*log10(sum(abs(perfect_signal_quantized).^2))
%     noiseAnalogIndB = 10*log10(noiseAnalog)
%     SNRAnalog = signal_quantizedIndB - noiseAnalogIndB
%     [psdSignal, w] = pwelch(signal_quantized);
%      plot(w/pi, psdSignal);
    % downmixing
    iq_downmixer(signal_quantized, osr, br, fc, fs);
   % [complex_envelope_out, HANN] = iq_downmixer(signal_quantized, osr, br, fc, fs);
    %[perfect_c_envelope_out, perfectHANN] = iq_downmixer(perfect_signal_quantized, osr, br, fc, fs);
    %complex_envelope_in
    %plot(1:numel(complex_envelope_in), angle(complex_envelope_in), ... 
    %1:numel(complex_envelope_in), angle(perfect_c_envelope_out), ...
    %1:numel(complex_envelope_in), angle(perfectHANN) );
%     noiseAnalog = sum(abs(angle(complex_envelope_in) - angle(complex_envelope_out)).^2);
%     noiseAnalogHANN = sum(abs(angle(complex_envelope_in) - angle(HANN)).^2);
%     %signal_quantizedIndB = 10*log10(sum(abs(perfect_c_envelope_out).^2))
%     noiseAnalogIndB = 10*log10(noiseAnalog)
%     noiseHANNIndB = 10*log10(noiseAnalogHANN)
    %SNRAnalog = signal_quantizedIndB - noiseAnalogIndB
    
%     noiseAnalog = sum(abs(complex_envelope_out - perfect_c_envelope_out).^2);
%     signal_quantizedIndB = 10*log10(sum(abs(perfect_c_envelope_out).^2))
%     noiseAnalogIndB = 10*log10(noiseAnalog)
%     SNRAnalog = signal_quantizedIndB - noiseAnalogIndB
    
    
%     [psdSignal, w] = pwelch(complex_envelope_out);
%      %plot(w/pi, psdSignal);
 end
% [nbrows, nbcols] = size(HANN);
% for i=1:nbcols
%     % GMSK demodulation
%     raw_out = gmsk_demodulate(HANN(:,i), osr);
% 
%     % clock recovery
%     clock_out = clock_recovery(raw_out, osr);
% 
%     % extract bits
%     encoded_out = extract_bits(raw_out, clock_out, osr);
% 
%     % FEC decoding (optional)
%     if use_fec
%         plain_out = fec_decode(encoded_out);
%     else
%         plain_out = encoded_out;
%     end
% 
%     % varicode decoding
%     message_out = varicode_decode(plain_out)
% 
%     % ber
%     [number, ratio(:,i)] = biterr(encoded_in, encoded_out);
% end
%figure('Name', 'BER vs ADC levels');
%plot(adc_levels, ratio);

%% Plotting

% raw_in = repelem(encoded_in * 2 - 1, osr, 1);
% 
% if plot_raw_data
%     figure('Name', 'Raw data');
%     time_in = ((1 : numel(raw_in))' - 1) / osr;
%     time_out = ((1 : numel(raw_out))' - 1) / osr;
%     h = plot(time_in, raw_in, '-', ...
%              time_out, raw_out, '-', ...
%              clock_out, encoded_out * 2 - 1, 'sk');
%     set(h, {'MarkerFaceColor'}, get(h, 'Color'));
%     grid();
% end
% 
% if plot_rf_signal && use_rf
%     figure('Name', 'RF signal');
%     time_in = ((1 : numel(signal_in))' - 1) / osr;
%     time_out = ((1 : numel(signal_out))' - 1) / osr;
%     plot(time_in, signal_in, '-', ...
%          time_out, signal_out, '-');
%     grid();
% end
