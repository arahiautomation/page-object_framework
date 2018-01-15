class UpdatePage
object = YAML.load(File.read('file_1.yaml'))


def to_ostruct(object)
  case object
  when Hash
    OpenStruct.new(Hash[object.map {|k, v| [k, to_ostruct(v)] }])

  when Array
   object.map {|x| to_ostruct(x) }
  else
   object
  end
end

#to_ostruct(object)



lead_1 = to_ostruct(object).projects
lead_1.each do |name|
extra = name.each_pair.to_a
extra.each do |str1,value|
puts "#{str1}:#{value}"
  
  case "#{str1}"
  
   when "name"
 #   puts value
   
   when "developers"
    test = value.each_pair.to_a
   test.each do |key1, value1|
    puts "State_1 " + "#{key1}:#{value1}"
    end
	
	when "NewTester"
	 test1 = value.each_pair.to_a
#	 puts test1
     test1.each do |key2, value2|
 #    puts "State_2 " + "#{key2}:#{value2}"
	 test2 = value2.each_pair.to_a
#	 puts   test2
	 test2.each do |str2,value3|
     puts "State_3 " + "#{str2}:#{value3}"
   end
   end
end
end
end
end
