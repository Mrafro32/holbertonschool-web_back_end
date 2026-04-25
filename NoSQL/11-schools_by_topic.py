#!/usr/bin/env python3
""" Modulo para buscar escuelas por un tema especifico """


def schools_by_topic(mongo_collection, topic):
    """ Devuelve una lista de escuelas que contienen un tema especifico """
    return list(mongo_collection.find({"topics": topic}))
