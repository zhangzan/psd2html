require 'psd2html'
psdPath = ARGV[0]
dstHtmlPath = ARGV[1]
psd = Psd2Html.new(psdPath)
unless dstHtmlPath
  puts psd.render()
else
  fh = File.new(dstHtmlPath, "w")  #创建一个可写文件流
  fh.puts psd.render()
  fh.close
end
