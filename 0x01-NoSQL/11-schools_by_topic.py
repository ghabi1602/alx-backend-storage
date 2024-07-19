#!/usr/bin/env python3
"""a module that returns the list of documents having a specific topic"""


def schools_by_topic(mongo_collection, topic):
    """a function that returns a list of schools having specific topic"""
    schools = mongo_collection.find({"topics": topic})
    return list(schools)
