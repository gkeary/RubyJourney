class B
  attr_accessor :base, :docs, :backup, :ray, :sandra, :dirs
  #attr_accessor :owner, :parent, :fname
  #puts "#{owner} #{gramp} #{dad} #{fname} #{bytes} #{x}"

  def initialize
    self.base   = File.expand_path("f:/backup") << "/" # don't miss adding "/"
    self.docs   = File.expand_path("f:/backup/documents and settings") << "/"
    self.backup = File.expand_path("f:/backup/documents and settings") << "/"
    self.ray    = File.expand_path("F:/backup/Documents and Settings/RAYMOND FREEMAN") << "/"
    self.sandra =File.expand_path("F:/backup/Documents and Settings/SANDRA FREEMAN") << "/"
    self.dirs   = [self.base, self.docs, self.backup, self.ray, self.sandra]
  end

  def load_files(start_path = self.base, filter = '*.*')
    return Dir[File.join(start_path, '**', filter)] << '/'
    # files.count #  should be 18 or so
    #files[0..1].each { |x| p "#{File.dirname x} -- #{File.basename x}" }
    # files.each { |x| p "#{File.dirname x} -- #{File.basename x}" }
  end

  def self.show (a)
    puts "Owner Grandparent Parent File Size Path"

    a.each do |x|

      next unless File.exist? x # probably a Windows shortcut
      next if x =~ /Windows/
      folders = (File.dirname x).split('/')
      dad     = folders[-1]
      #dad, gramp = ['aa', 'bb']
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

end


