#!/usr/bin/env python3
"""a python module that updates the topics of a school collection"""


def update_topics(mongo_collection, name, topics):
    """a function that updates the topics of a school"""
    mongo_collection.update_many(
            {"name": name},
            {"$set": {"topics": topics}}
            )
