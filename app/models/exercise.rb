class Exercise

  # Факториал чисел
  def self.fac(num)
    fac = 1
    if num > 1
      (1..num).to_a.each do |item|
        fac *= item
      end
    end
    fac
  end

  # Заменить все пробелы в строке символами '%20'
  def self.find_spaces(str)
    str = str.gsub(" ", '%20')
    str
  end

  # Вывести индекс заданного элемента в отсортированном по возрастанию и циклически сдвинутом массиве
  def self.find_index_el(el) # 1..10
    arr = [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8]
    arr.index(8)
  end

  # Можно ли строку сделать палиндромом
  def self.palind(str)
    if str.length >= 3
      if str == str.reverse
        return true
      end

      one_str = ""
      str.each_char do |ch|
        next if one_str.include?(ch)
        if str.count(ch) == 2
          one_str << ch
        end
      end

      if str.length - 1 == one_str.length * 2
        return true
      end

      two_string = str
      one_str.each_char do |ch|
        two_string.delete!(ch)
      end
      return true if two_string.empty?
    end

    return false
  end

  # Определить является ли одна строка перестановкой другой
  def self.annograms(str1, str2)
    return true if str1.chars.sort.join == str2.chars.sort.join
    return false
  end

  # Вывести слова в строке в порядке убывания их длины
  def self.long_string(str)
    return str.split.sort_by {|a| a.length}.join(" ")
  end

  # Вывести максимальную сумму элементов в массиве
  def self.max_sum(arr)
    summ = 0
    arr.each do |num|
      summ += num
      summ = 0 if summ < 0
    end
    return summ
  end

end