import pytest

#APP
def sumar (a, b):
    return a + b

def restar (a, b):
    return a - b

def multiplicar (a, b):
    return a * b

#TEST
def test_suma():
    assert sumar(2, 3) == 5
    
def test_resta():
    assert restar(10, 5) == 5

def test_multiplicacion():
    assert multiplicar(3, 3) == 9