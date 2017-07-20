# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "test1@test.com", full_name: "Test One")
User.create(email: "test2@test.com", full_name: "Test Two", predictions_bool: true)
User.create(email: "admin@test.com", full_name: "Admin Test", admin: true)

ChaosComp.create(uid: 1, first: "UVA HooRaas", second: "UMBC Raascals", third: "Texas Raas (DSD)")
ChaosComp.create(uid: 2, first: "UMBC Raascals", second: "UVA HooRaas", third: "GT Ramblin' Raas")
ChaosComp.create(uid: 3, first: "Emory SaRaas", second: "GT Ramblin' Raas", third: "UMD Entouraas")

# All below should fail validations from initial test set
ChaosComp.create(uid: 1, first: "GT Ramblin' Raas", second: "UH Roarin' Raas", third: "UF GatoRaas")
ChaosComp.create(uid: 2, first: "UMBC Raascals", second: "UH Roarin' Raas", third: "GW Raas")
ChaosComp.create(uid: 3, first: "UTD Taraas", second: "UH Roarin' Raas", third: "GW Raas")


User.create(email: "dummy@test.c", full_name: "Dummy Test")