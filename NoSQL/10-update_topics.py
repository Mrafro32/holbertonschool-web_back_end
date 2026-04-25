#!/usr/bin/env python3
""" Modulo para actualizar temas de una escuela en MongoDB """


def update_topics(mongo_collection, name, topics):
    """ Actualiza los temas de una escuela basado en el nombre """
    mongo_collection.update_many(
        {"name": name},
        {"$set": {"topics": topics}}
    )
