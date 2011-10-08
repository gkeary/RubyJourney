

  def load_files(start_path = "g:/backup/", filter = '*.*')
    return Dir[File.join(start_path, '**', filter)] << '/'
  end

  def self.show (a)
    puts "Owner Grandparent Parent File Size Path"

    a.each do |x|

      next unless File.exist? x # probably a Windows shortcut
      next if x =~ /Windows/
      folders = (File.dirname x).split('/')
      fname   = File.basename x
      bytes   = File.size x
      if (x =~ /[RAYMOND|SANDRA]/)
        owner = 'user'
      else
        owner = 'sys'
      end

      #puts "#{owner} ||#{gramp} ||#{dad} ||#{fname} ||#{bytes} ||#{x}"
      puts "#{owner} ||#{folders[3..-1]} ||#{folders[-1]} ||#{fname} ||#{bytes} "
    end
  end


