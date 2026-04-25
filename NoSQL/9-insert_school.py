#!/usr/bin/env python3
""" Modulo para insertar un documento en MongoDB usando Python """


def insert_school(mongo_collection, **kwargs):
    """ Inserta un documento basado en kwargs y retorna el id """
    new_doc = mongo_collection.insert_one(kwargs)
    return new_doc.inserted_id
