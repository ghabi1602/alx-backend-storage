#!/usr/bin/env python3
"""a python function that inserts a new document in a collection"""


def insert_school(mongo_collection, **kwargs):
    """returns the new _id"""
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
