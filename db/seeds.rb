# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({ name: 'Foo', email: 'user1@mail.com', password: '111111'})
user2 = User.create({ name: 'Bar', email: 'user2@mail.com', password: '111111'})
group1 = Group.create({name: 'Transportation', icon: 'https://lorempixel.com/100/100/transport/', user_id: user1.id})
group2 = Group.create({name: 'Food', icon: 'https://lorempixel.com/100/100/food/', user_id: user1.id})
group3 = Group.create({name: 'Entertainment', icon: 'https://lorempixel.com/100/100/nightlife/', user_id: user1.id})
group4 = Group.create({name: 'Hobbies', icon: 'https://lorempixel.com/100/100/nature/', user_id: user1.id})
entity1 = Entity.create({name: '001 Super Bar', amount: 10, user_id: user1.id})
entity2 = Entity.create({name: '002 St Pauls', amount: 23, user_id: user1.id})
entity3 = Entity.create({name: '003 Mall', amount: 17, user_id: user1.id})
entity4 = Entity.create({name: '004 Park', amount: 28, user_id: user1.id})
entity5 = Entity.create({name: '005 New York', amount: 18, user_id: user1.id})
entity6 = Entity.create({name: '006 Fun Island', amount: 12, user_id: user1.id})
entity7 = Entity.create({name: '007 Food City', amount: 8, user_id: user1.id})
entity8 = Entity.create({name: '008 Party Land', amount: 32, user_id: user1.id})
group_entity1 = GroupEntity.create({entity_id: entity1.id, group_id: group1.id})
group_entity2 = GroupEntity.create({entity_id: entity2.id, group_id: group1.id})
group_entity3 = GroupEntity.create({entity_id: entity3.id, group_id: group1.id})
group_entity4 = GroupEntity.create({entity_id: entity4.id, group_id: group1.id})
group_entity5 = GroupEntity.create({entity_id: entity5.id, group_id: group2.id})
group_entity6 = GroupEntity.create({entity_id: entity6.id, group_id: group2.id})
group_entity7 = GroupEntity.create({entity_id: entity7.id, group_id: group2.id})
group_entity8 = GroupEntity.create({entity_id: entity8.id, group_id: group2.id})
group_entity9 = GroupEntity.create({entity_id: entity1.id, group_id: group3.id})
group_entity10 = GroupEntity.create({entity_id: entity2.id, group_id: group4.id})