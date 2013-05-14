#!/usr/bin/env python

f = open('tmp','r')                                # Setup a read connection to file
filedata = f.read()                                # Read the file
f.close()                                          # Close the connection
filedata = filedata.split('\n')                    # Turn into a list

#####################################################################################################

#out = []                                           # Create an empty array

#for i in filedata:
#     if '@' in i:                                  # grep '@'
#          if not 'apples' in i:                    # grep -v 'apples'
#               out.append(i.lower())               # Append to array and change to lower case

#out = list(set(out))                               # Make list unique
#out.sort()                                         # Sort

#for j in out:
#     print j

#####################################################################################################

domain = 'target.com'
f_xls = open('xls.txt','a')
f_ppt = open('ppt.txt','a')
f_pdf = open('pdf.txt','a')
f_txt = open('txt.txt','a')
f_doc = open('doc.txt','a')

for i in filedata:
     if domain in i:
          if not 'Searching in' in i:
               if '.xls' in i:
                    f_xls.write(i.lower()+'\n')
               elif '.ppt' in i:
                    f_ppt.write(i.lower()+'\n')
               elif '.pdf' in i:
                    f_pdf.write(i.lower()+'\n')
               elif '.txt' in i:
                    f_txt.write(i.lower()+'\n')
               elif '.doc' in i:
                    if not '.pdf, .ppt, .xls' in i:
                         f_doc.write(i.lower()+'\n')

f_xls.close()
f_ppt.close()
f_pdf.close()
f_txt.close()
f_doc.close()
