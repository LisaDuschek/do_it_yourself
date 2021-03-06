require ('pry')

class MyHash
  define_method(:initialize) do
    @hash=[]
  end

  define_method(:value) do
    @hash[0]
  end

  define_method(:myStore) do |key, value|
    @hash.push([key, value])
  end

  define_method(:myFetch) do |key|
    value = nil
    @hash.each() do |pair|
      if pair[0] == key
        value = pair[1]
      end
    end
    value
  end

  define_method(:has_key?) do |key|
    result=nil
    @hash.each() do |pair|
      if pair[0] == key
        result=true
      else
        result=false
      end
    end
    result
  end

  define_method(:has_value?) do |value|
    result=nil
    @hash.each() do |pair|
      if pair[1] == value
        result=true
      else
        result=false
      end
    end
    result
  end

  define_method(:what_length) do
    result=@hash.length()
  end

  define_method(:myMerge) do |hash_two|
    result=@hash.push(hash_two)
  end
end
