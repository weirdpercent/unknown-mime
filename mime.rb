xml='/usr/share/mime/packages/kde.xml'
mt=File.readlines(xml)
start=mt.index("  <!-- all/ fake mime types -->\n")
start += 1
finish=mt.index("    <comment>rtspu: URIs</comment>\n")
finish += 1
x=start
while x <= finish do
  mt[x]=''
  x += 1
end
nf=File.new("newkde.xml", "w")
y=0
mt.each do
  nf.print mt[y]
  y += 1
end
nf.close
#`diff /usr/share/mime/packages/kde.xml ./newkde.xml`
`mv newkde.xml /usr/share/mime/packages/kde.xml`
`update-mime-database /usr/share/mime`
