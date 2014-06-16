### R code from vignette source 'variable_interpolation.Rnw'

###################################################
### code chunk number 1: variable_interpolation.Rnw:23-29
###################################################
region = c(1, 2)
value = 4
name = "name"
str = paste("region = (", region[1], ", ", region[2], "), value = ", value, 
            ", name = '", name, "'", sep = "")
cat(str)


###################################################
### code chunk number 2: variable_interpolation.Rnw:43-47
###################################################
library(GetoptLong)

str = qq("region = (@{region[1]}, @{region[2]}), value = @{value}, name = '@{name}'")
cat(str)


###################################################
### code chunk number 3: variable_interpolation.Rnw:52-53
###################################################
qqcat("region = (@{region[1]}, @{region[2]}), value = @{value}, name = '@{name}'")


###################################################
### code chunk number 4: variable_interpolation.Rnw:59-67
###################################################
options("cat_prefix" = "[INFO] ")
qqcat("This is a message")

options("cat_prefix" = function(x) format(Sys.time(), "[%Y-%m-%d %H:%M:%S] "))
qqcat("This is a message")

options("cat_prefix" = NULL)
qqcat("This is a message")


###################################################
### code chunk number 5: variable_interpolation.Rnw:72-74
###################################################
options("cat_prefix" = "[INFO] ", "cat_verbose" = FALSE)
qqcat("This is a message")


###################################################
### code chunk number 6: variable_interpolation.Rnw:77-78
###################################################
options("cat_prefix" = NULL)


###################################################
### code chunk number 7: variable_interpolation.Rnw:82-86
###################################################
options("cat_verbose" = NULL)
options("cat_prefix" = "[DEBUG] ")
qqcat("This is a message", cat_prefix = "[INFO] ")
qqcat("This is a message")


###################################################
### code chunk number 8: variable_interpolation.Rnw:89-90
###################################################
options("cat_prefix" = NULL)


###################################################
### code chunk number 9: variable_interpolation.Rnw:96-101 (eval = FALSE)
###################################################
## GetoptLongc(
##     "verbose", "Print message"
## )
## options("cat_verbose" = verbose)
## qqcat("This is a message")


###################################################
### code chunk number 10: variable_interpolation.Rnw:104-105
###################################################
options("cat_verbose" = NULL)


###################################################
### code chunk number 11: variable_interpolation.Rnw:110-114
###################################################
n = 1
qqcat("There @{ifelse(n == 1, 'is', 'are')} @{n} dog@{ifelse(n == 1, '', 's')}.\n")
n = 2
qqcat("There @{ifelse(n == 1, 'is', 'are')} @{n} dog@{ifelse(n == 1, '', 's')}.\n")


###################################################
### code chunk number 12: variable_interpolation.Rnw:121-122 (eval = FALSE)
###################################################
## qq = GetoptLong::qq


###################################################
### code chunk number 13: variable_interpolation.Rnw:134-136
###################################################
x = 1
qqcat("x = #{x}", code.pattern = "#\\{CODE\\}")


###################################################
### code chunk number 14: variable_interpolation.Rnw:141-142 (eval = FALSE)
###################################################
## options("code.pattern" = "#\\{CODE\\}")


###################################################
### code chunk number 15: variable_interpolation.Rnw:149-162 (eval = FALSE)
###################################################
## code.pattern = "@\\{CODE\\}"    # default style
## code.pattern = "@\\[CODE\\]"
## code.pattern = "@\\(CODE\\)"
## code.pattern = "%\\{CODE\\}"
## code.pattern = "%\\[CODE\\]"
## code.pattern = "%\\(CODE\\)"
## code.pattern = "\\$\\{CODE\\}"
## code.pattern = "\\$\\[CODE\\]"
## code.pattern = "\\$\\(CODE\\)"
## code.pattern = "#\\{CODE\\}"
## code.pattern = "#\\[CODE\\]"
## code.pattern = "#\\(CODE\\)"
## code.pattern = "\\[%CODE%\\]"  # Template Toolkit (Perl module) style :)


###################################################
### code chunk number 16: variable_interpolation.Rnw:173-174 (eval = FALSE)
###################################################
## code.pattern = "`CODE`"


###################################################
### code chunk number 17: variable_interpolation.Rnw:182-185
###################################################
x = 1
y = 2
qqcat("x = @{x}, y = @{y}", envir = list(x = "a", y = "b"))


###################################################
### code chunk number 18: variable_interpolation.Rnw:195-202
###################################################
x = 1:6
qqcat("@{x} is an @{ifelse(x %% 2, 'odd', 'even')} number.\n")


y = c("a", "b")
z = c("A", "B", "C", "D", "E")
qqcat("@{x}, @{y}, @{z}\n")


###################################################
### code chunk number 19: variable_interpolation.Rnw:207-210
###################################################
name = letters[1:4]
value = 1:4
qqcat("<tr><td>@{name}</td><td>@{value}</td><tr>\n")


###################################################
### code chunk number 20: variable_interpolation.Rnw:214-217
###################################################
str = qq("@{x}, @{y}, @{z}", collapse = FALSE)
length(str)
str


###################################################
### code chunk number 21: variable_interpolation.Rnw:228-242
###################################################
name = letters[1:4]
value = 1:4
str = qq("`
  text = character(length(name))
  for(i in seq_along(name)) {
    if(i == 1) {
      text[i] = qq(\"<tr class='highlight'><td>@{name[i]}</td><td>@{value[i]}</td></tr>\n\")
    } else {
      text[i] = qq(\"<tr><td>@{name[i]}</td><td>@{value[i]}</td></tr>\n\")
    }
  }
text
`", code.pattern = "`CODE`")
cat(str)


###################################################
### code chunk number 22: variable_interpolation.Rnw:253-267
###################################################
html = "<html>
<body>
<h2>Report for [% report_name %]</h2>
<table>
<tr><th>name</th><th>value</th></tr>
[% 
i = seq_along(name)
qq(\"<tr@{ifelse(i == 1, ' class=\\\"highlight\\\"', '')}><td>@{name}</td><td>@{value}</td></tr>\n\")
%]
</table>
</body>
</html>
"
cat(html)


###################################################
### code chunk number 23: variable_interpolation.Rnw:271-278 (eval = FALSE)
###################################################
## template = paste(readLines("template.html"), collapse = "\n")
## 
## report_name = "test"
## name = letters[1:4]
## value = 1:4
## html = qq(template, code.pattern = "\\[%CODE%\\]")
## writeLines(html, con = "report.html")


###################################################
### code chunk number 24: variable_interpolation.Rnw:283-287
###################################################
report_name = "test"
name = letters[1:4]
value = 1:4
qqcat(html, code.pattern = "\\[%CODE%\\]")


