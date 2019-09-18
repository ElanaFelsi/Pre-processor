import glob


def get_include_path(_line):
    if "\"" in _line:
        return _line.split("\"", 2)[1]
    return "system/" + _line.split("<")[1].replace(">", ".h")


def include_list(header_filename, files):
    with open(header_filename, 'r') as header_file:
        for line in header_file:
            if line.startswith("#include \""):
                name = get_include_path(line.strip())
                files.append(name)
                return include_list(name, files)
            if line.startswith("#include <"):
                name = get_include_path(line.strip())
                files.append(name)

    return


def get_include_content(_headers_list):
    content = ""
    for file in _headers_list:
        with open(file, 'r') as f:
            for line in f:
                if not line.startswith("#include"):
                    content += line
    return content


def get_macros(ppfile):
    define_list = []
    lines = ppfile.split("\n")
    for line in lines:
        if line.startswith("#define"):
            define_list.append(line)
            ppfile.replace(line, "")
        print(define_list)
    return define_list


def set_macros(define_list, ppfile):
    for define in define_list:
        define = define.replace("#define ", "")
        if "__" not in define:
            if "(" in define:
                macro_name = define.split("(")[0]
                parameters = ((define.split("(")[1]).split(")")[0].replace(" ", "")).split(",")
                action = define.split(")", 1)[1]
                for line in ppfile:
                    if macro_name in line:
                        line = line.replace(macro_name + "(", "")
                        values = ((line.split(")")[0].replace(" ", "")).split(","))
                        for i in range(len(values)):
                            pass
            else:
                macro_name = define.split(" ")[0]
                value = define.split(" ")[1]


for filename in glob.glob('*.cpp'):
    with open(filename, 'r+') as cpp:
        listofheaders = []
        include_list(filename, listofheaders)
        listofheaders.append(filename)
        ppfile = ""
        ppfile += get_include_content(listofheaders)

        define_list = get_macros(ppfile)

        newppFile = open(filename.replace("cpp", "pp"), "w")
        newppFile.write(ppfile)