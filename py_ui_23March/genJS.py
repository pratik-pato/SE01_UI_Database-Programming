#!/usr/bin/python

def javaScriptType(jsFile, src, href, rel):
    jsFile.write("<script type=\"text/javascript\" src=\"%s\"></script>\n"%(src))
    if href != "":
        jsFile.write("\t<link href=\"%s\"\n"%(href))
        if rel != "":
            jsFile.write("\t\t rel=\"%s\" type=\"text/css\" />"%(rel))
        else:
            jsFile.write(" type=\"text/css\"/>")

def genOptions(jsFile, optionList):
    jsFile.write("<select id=\"optionList\" multiple=\"multiple\" autofocus>\n")
    for i in range(0,len(optionList)):
        jsFile.write("<option value=\"%s\">%s</option>\n"%(int(i)+1, optionList[int(i)]))
    jsFile.write("</select>\n<input type=\"button\" id=\"btnSelected\" value=\"Get Selected\" />")

def genOpenTag(jsFile):
    jsFile.write("<html>\n<head>\n")

def genCloseTag(jsFile):
    jsFile.write("</head>\n</html>")

def genAttrNames(jsFile, colList):
    for i in colList:
        jsFile.write("<th>%s</th>\n"%(i))

def genColumnTag(jsFile, countRows, size):
    jsFile.write("\'<td><input id=\"attr\' + ((count * n) + %d) + \'\" onkeydown=\"getValues(event, %d)\" value = \"\" style=\"width:98%%\"></td>\'\n"%(0, size))
    for i in range(1,size):
        jsFile.write(" + \'<td><input id=\"attr\' + ((count * n) + %d) + \'\" onkeydown=\"getValues(event, %d)\" value = \"\" style=\"width:98%%\"></td>\'\n"%(i, size))

def genRow(jsFile, tableData):
    for i in range(len(tableData)):
        jsFile.write("<tr id=\"TableRow%d\">\n"%(i))
        jsFile.write("\'<td><input id=\"attr%d\" onkeydown=\"getValues(event, %s)\" value = \"%s\" autofocus style=\"width:98%%\"></td>\n"%(i*len(tableData[i]), len(tableData[i]), tableData[0][i]))
        for j in range(1,len(tableData[i])):
            jsFile.write("<td><input id=\"attr%d\" onkeydown=\"getValues(event, %s)\" value = \"%s\" style=\"width:98%%\"></td>\n"%(i*len(tableData[i])+j, len(tableData[i]), tableData[j][i]))
        jsFile.write("</tr>\n")
    jsFile.write("<td><input id=\"attr%d\" onkeydown=\"getValues(event, %s)\" value = \"\" autofocus style=\"width:98%%\"></td>\n"%(len(tableData)*len(tableData[0]), len(tableData[0])))
    for i in range(1,len(tableData[0])):
        jsFile.write("<td><input id=\"attr%d\" onkeydown=\"getValues(event, %s)\" value = \"\" style=\"width:98%%\"></td>\n"%(len(tableData)*len(tableData[0])+i, len(tableData[0])))
        
    jsFile.write("</tr>\n")
