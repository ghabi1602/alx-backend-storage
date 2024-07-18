#!/usr/bin/env python3
"""a pymongo function that lists all documents in a collection"""


def list_all(mongo_collection):
    """a function that lists all documents of a collection"""
    docs = []
    for doc in mongo_collection.find():
            docs.append(doc)
    return docs

