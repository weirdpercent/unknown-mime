xml = '/usr/share/mime/packages/kde.xml'
mt = File.readlines(xml)
e = mt.scan(/(.*)(<!-- all\/ fake mime types -->)([<>A-Za-z\s"\/!:=-]*)(<!-- uri\/ fake mime types -->)([<>A-Za-z\s"\/!:=-]*<mime-type type="uri\/rtspu">\s*<comment>rtspu: URIs<\/comment>\s*<\/mime-type>)(.*)/m)
e = e[0]
ed = "#{e[0]}#{e[1]}\n\n  #{e[3]}#{e[5]}"
nf = File.new("newkde.xml", "w")
nf.print ed
nf.close
puts 'Lines to be removed:'
`diff ./newkde.xml #{xml}`
puts 'Do you want to save these changes?(y/n)'
save = gets
if save == 'y\n'
  `sudo mv newkde.xml #{xml}`
  `sudo update-mime-database /usr/share/mime`
else
  puts 'Cancelling changes.'
  File.delete('newkde.xml')
end
