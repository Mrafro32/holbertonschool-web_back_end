#!/usr/bin/env python3
""" Modulo para listar todos los documentos en MongoDB usando Python """


def list_all(mongo_collection):
    """ Lista todos los documentos en una coleccion """
    return list(mongo_collection.find())
