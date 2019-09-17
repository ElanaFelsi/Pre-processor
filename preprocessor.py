import glob
import re


def add_included_file(includes, lines):
    data = ""
    for file in includes:
        with open(file) as the_file_to_include:
            for line in the_file_to_include:
                data += line
    lines = "\n".join(lines)
    data += lines
    return data



def parse_include(lines):
    includes = []
    for line in lines:
        if line.startswith("#include"):
            file_to_be_included = line.split()
            file_to_be_included = file_to_be_included[file_to_be_included.index("#include") + 1]
            file_to_be_included = re.sub('[^0-9a-zA-Z.]+', '', file_to_be_included)
            includes.append(file_to_be_included)
    data = add_included_file(includes, lines)
    return data

def open_files():
    header_files = glob.glob('**/*.h')
    cpp_files = glob.glob('**/*.cpp')

    for files in header_files:
        with open(files, 'r+') as h_file:
            lines = h_file.read().splitlines()
            data = parse_include(lines)
            h_file.write(data)

    for file in cpp_files:
        with open(file, 'r+') as cpp_file:
            lines = cpp_file.read().splitlines()
            data = parse_include(lines)
            cpp_file.write(data)


open_files()
