#!/usr/bin/env python

import sys
import os
import ast
import _ast

# TODO:
#
# Add --long option to print out list of functions and their lengths
# Some sort of variable "locality" measurement 

def count_statements(tree):

    statement_count = 0

    if(isinstance(tree, list)):
        child_nodes = tree
    else:
        child_nodes = tree.body

    for node in child_nodes:

        statement_count += 1

        if(isinstance(node, _ast.If)):
            statement_count += count_statements(node.body)
            statement_count += count_statements(node.orelse)

        if(isinstance(node, _ast.For) or isinstance(node, _ast.While) or
          isinstance(node, _ast.TryExcept) or isinstance(node, _ast.TryFinally)):
            statement_count += count_statements(node.body)


    return statement_count

def count_functions(tree):
    function_count = 0
    for node in ast.walk(tree):
        if(isinstance(node, _ast.FunctionDef)):
            function_count += 1

    return function_count

def function_lengths(tree):

    function_lengths = []
    for node in ast.walk(tree):
        if(isinstance(node, _ast.FunctionDef)):
            function_lengths.append(count_statements(node))

    return function_lengths

if(len(sys.argv) < 2):
    print "Must supply a file to compute statistics on"
    sys.exit()

filename = sys.argv[1]

f = open(filename)

syntax_tree = ast.parse(f.read())

print "Number of top-level statements: %d" % (count_statements(syntax_tree))

print "Number of functions: %d" % (count_functions(syntax_tree))

lengths = function_lengths(syntax_tree)
print "Mean function length: %.1f" % (sum(lengths)/float(len(lengths)))
