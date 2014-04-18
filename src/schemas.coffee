{mongoose, model} = require 'node-restful'
{Schema} = mongoose
{ObjectId} = Schema.Types
Auth = require './classes/auth'
config = require './config'


##
## SCHEMA DEFINITIONS
##

# Export Schemas.
schemas =

  # The User schema.
  User: Schema
    email:    type: String, required: true, unique: true, lowercase: true, match: /^.+?@[^@]+$/
    username: type: String, required: true, unique: true, lowercase: true, match: /^[\w-_]{4,48}$/
    password: type: String, required: true, select: false
    friends:  type: [ObjectId], ref: 'user'

##
## MIDDLEWARE
##

# Add user password hashing.
schemas.User.pre 'save', Auth.Middleware.hashPassword()


##
## MODELS
##

# Create and export models.
models = {mongoose}
models[key] = model key.toLowerCase(), schema for own key, schema of schemas
module.exports = models
