if ARGV[0] != nil
	subdirectory = ARGV[0]
else 
	puts "Assmuing \"/svg/design/\" for subdirectory"
	subdirectory = "/svg/design/"
end

counter = 0
names = []
svgFile = File.open("custom.svg", "w")
svgFile.truncate(0)
svgFile.write("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<svg version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">\n")

wd = Dir.pwd
repo = Dir.glob("*")
repo.each {|file|
	if Dir.exist?(file) && Dir.exist?(file + subdirectory) then
		Dir.chdir(file + "/svg/design/")
		category = Dir.glob("*24px.svg")
		category.each {|svg|
			if File.readable?(svg) && !File.zero?(svg) then
				name = svg.gsub(/ic_(.*)_24px\.svg/i, '\1')
				i = 2
				while names.include?(name)
					name = "#{name}_" + i.to_s
					i += 1
				end
				names.push(name)

				input = IO.readlines(svg)
				idHash = {}

				svgFile.write("<symbol id=\"#{name}\" transform=\"matrix(1 0 0 -1 12 12)\">\n")
				input.each {|line|
					next if line.match(/<\/?svg|<!--.*-->|<\?xml.*>|xml:space="preserve">$/)
					if line.match(/id="(\w|_|-)+"/) then
						idHash[line.match(/id="((\w|_|-)+)"/)[1]] = counter
						line.gsub!(/id="((\w|_|-)+)"/, "id=\"#{counter}\"")
						counter += 1
					end
					if line.match(/xlink:href="#(\w|_|-)+"/) then
						id = idHash[line.match(/xlink:href="#((\w|_|-)+)"/)[1]]
						line.gsub!(/xlink:href="#((\w|_|-)+)"/, "xlink:href=\"##{id}\"")
					end
					if line.match(/url\(#(\w|_|-)+\)/) then
						id = idHash[line.match(/url\(#((\w|_|-)+)\)/)[1]]
						line.gsub!(/url\(#((\w|_|-)+)\)/, "url(##{id})")
					end

					svgFile.write(line)
				}
				svgFile.write("</symbol>\n<use xlink:href=\"##{name}\" width=\"24\" height=\"24\" x=\"0\" y=\"0\"/>\n")
			end
		}
	end

	Dir.chdir(wd)
}

svgFile.write("</svg>")
svgFile.close unless svgFile.nil?