files = []
def load_em
base_dir = File.expand_path("f:/backup/documents and settings") << "/"  # don't miss adding "/"
files = Dir[File.join(base_dir,'**','*.jpg')] << '/' 
files.count #  should be 18 or so
#files[0..1].each { |x| p "#{File.dirname x} -- #{File.basename x}" }
files.each { |x| p "#{File.dirname x} -- #{File.basename x}" }
end
def show (a )
a.each { |x| puts "#{(File.dirname x).split('/')[-1]} NAME: #{File.basename x}" }
end

files


