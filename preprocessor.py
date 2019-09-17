import glob
import re


def add_included_file(includes, lines, name):
    data = ""
    for file in includes:
        if file.startswith("<"):
            file = re.sub('[^0-9a-zA-Z.]+', '', file)
            the_file_to_include = open("PreprocessorTask/system" + "/" + file + ".h", "r")
        else:
            file = re.sub('[^0-9a-zA-Z.]+', '', file)
            the_file_to_include = open("PreprocessorTask" + "/" + file)
            for line in the_file_to_include:
                data += line
    lines = "\n".join(lines)
    data += lines

    with open(name + ".pp", 'w+') as new_src:
        new_src.write(data)


def parse_include(lines, name):
    includes = []
    for line in lines:
        if line.startswith("#include"):
            file_to_be_included = line.split()
            file_to_be_included = file_to_be_included[file_to_be_included.index("#include") + 1]
            includes.append(file_to_be_included)
    add_included_file(includes, lines, name)


def parse_file_name(name):
    index_slash = name.find("\\")
    index_p = name.find(".")
    name = name[index_slash + 1: index_p]
    return name


def open_files():
    header_files = glob.glob('**/*.h')
    cpp_files = glob.glob('**/*.cpp')

    for file in cpp_files:
        with open(file) as cpp_file:
            lines = cpp_file.read().splitlines()
            name = cpp_file.name
            name = parse_file_name(name)
            parse_include(lines, name)


open_files()
