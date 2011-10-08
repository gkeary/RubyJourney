files = []
def load_em
base_dir = File.expand_path("f:/trial") << "/"  # don't miss adding "/"
files = Dir[File.join(base_dir,"**","*.*")] << "/" 
files.count #  should be 18 or so
#files[0..1].each { |x| p "#{File.dirname x} -- #{File.basename x}" }
files.each { |x| p "#{File.dirname x} -- #{File.basename x}" }
end
files


