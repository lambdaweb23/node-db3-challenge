const express = require("express");
const db = require("../data/dbConfig.js");

const find = () => {
    return db("schemes");
}
const findById = (id) => {
    return db("schemes").where({id}).first();
}

const findSteps = (id) => {
  return db("steps")
    .join("schemes", "steps.scheme_id", "schemes.id")
    .select("steps.id", "schemes.scheme_name", "steps.step_number", "steps.instructions")
    .where({scheme_id: id})
    .orderBy("steps.step_number")
}

const add = (scheme) => {
  return db("schemes").insert(scheme)
}

const update = (changes, id) => {
    return db("schemes")
        .where({id}).update(changes)
}

const remove = (id) => {
  return db("schemes")
    .where({id}).delete()
}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}