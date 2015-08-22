# coding: utf-8

def gen_encoder(keyword)
  alphabets = ('a'..'z').to_a
  keywords = keyword.split('')
  encoder = (keywords + alphabets).uniq
  Hash[alphabets.zip(encoder)]
end

def encode(text, keyword)
  text = text.downcase
  encoder = gen_encoder(keyword)
  text.gsub(/[a-z]/, encoder)
end

def gen_decoder(keyword)
  gen_encoder(keyword).invert
end
 
def decode(text, keyword)
  decoder = gen_decoder(keyword)
  text.gsub(/[a-z]/, decoder)            
end

def frequency_analyze(text)
  text = text.downcase.split('')

  result = {}

  text = text.select { |letter| letter.match(/[a-z]/)}
  size = text.size
  
  text.each do |letter|
    result[letter] ||= 0.to_f
    result[letter] += ((1.to_f/size.to_f) * 100)
  end
  
  result.sort do |(k1, v1), (k2, v2)|
    v2 <=> v1
  end
                         
end

