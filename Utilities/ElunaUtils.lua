--[[

	Author:
    Discord -> Sylian
    Emudevs.gg -> Sylian
    Github -> Sylian1337
    Youtube -> [DEV] Sylian | https://www.youtube.com/channel/UCu-CAun3v_UrbxcFcHS-K-Q


	[LICENSE]
	This helper libary is free for everyone to use.
    Please, dont share this WITHOUT my permission!

]]--


--[[ Eluna Events  ]]--
BGEvents = {
    BG_EVENT_ON_START           = 1,  -- (event, bg, bgId, instanceId) - Needs to be added to TC
    BG_EVENT_ON_END             = 2,  -- (event, bg, bgId, instanceId, winner) - Needs to be added to TC
    BG_EVENT_ON_CREATE          = 3,  -- (event, bg, bgId, instanceId) - Needs to be added to TC
    BG_EVENT_ON_PRE_DESTROY     = 4,  -- (event, bg, bgId, instanceId) - Needs to be added to TC
    BG_EVENT_COUNT              = 5
}

CreatureEvents = {
    CREATURE_EVENT_ON_ENTER_COMBAT              = 1,  -- (event, creature, target) - Can return true to stop normal action
    CREATURE_EVENT_ON_LEAVE_COMBAT              = 2,  -- (event, creature) - Can return true to stop normal action
    CREATURE_EVENT_ON_TARGET_DIED               = 3,  -- (event, creature, victim) - Can return true to stop normal action
    CREATURE_EVENT_ON_DIED                      = 4,  -- (event, creature, killer) - Can return true to stop normal action
    CREATURE_EVENT_ON_SPAWN                     = 5,  -- (event, creature) - Can return true to stop normal action
    CREATURE_EVENT_ON_REACH_WP                  = 6,  -- (event, creature, type, id) - Can return true to stop normal action
    CREATURE_EVENT_ON_AIUPDATE                  = 7,  -- (event, creature, diff) - Can return true to stop normal action
    CREATURE_EVENT_ON_RECEIVE_EMOTE             = 8,  -- (event, creature, player, emoteid) - Can return true to stop normal action
    CREATURE_EVENT_ON_DAMAGE_TAKEN              = 9,  -- (event, creature, attacker, damage) - Can return true to stop normal action, can return new damage as second return value
    CREATURE_EVENT_ON_PRE_COMBAT                = 10, -- (event, creature, target) - Can return true to stop normal action
    -- UNUSED
    CREATURE_EVENT_ON_OWNER_ATTACKED            = 12, -- (event, creature, target) - Can return true to stop normal action            // Not on mangos
    CREATURE_EVENT_ON_OWNER_ATTACKED_AT         = 13, -- (event, creature, attacker) - Can return true to stop normal action          // Not on mangos
    CREATURE_EVENT_ON_HIT_BY_SPELL              = 14, -- (event, creature, caster, spellid) - Can return true to stop normal action
    CREATURE_EVENT_ON_SPELL_HIT_TARGET          = 15, -- (event, creature, target, spellid) - Can return true to stop normal action
    -- UNUSED                                   = 16, -- (event, creature)
    -- UNUSED                                   = 17, -- (event, creature)
    -- UNUSED                                   = 18, -- (event, creature)
    CREATURE_EVENT_ON_JUST_SUMMONED_CREATURE    = 19, -- (event, creature, summon) - Can return true to stop normal action
    CREATURE_EVENT_ON_SUMMONED_CREATURE_DESPAWN = 20, -- (event, creature, summon) - Can return true to stop normal action
    CREATURE_EVENT_ON_SUMMONED_CREATURE_DIED    = 21, -- (event, creature, summon, killer) - Can return true to stop normal action    // Not on mangos
    CREATURE_EVENT_ON_SUMMONED                  = 22, -- (event, creature, summoner) - Can return true to stop normal action
    CREATURE_EVENT_ON_RESET                     = 23, -- (event, creature)
    CREATURE_EVENT_ON_REACH_HOME                = 24, -- (event, creature) - Can return true to stop normal action
    -- UNUSED                                   = 25, -- (event, creature)
    CREATURE_EVENT_ON_CORPSE_REMOVED            = 26, -- (event, creature, respawndelay) - Can return true to stop normal action, can return new respawndelay as second return value
    CREATURE_EVENT_ON_MOVE_IN_LOS               = 27, -- (event, creature, unit) - Can return true to stop normal action. Does not actually check LOS, just uses the sight range
    -- UNUSED                                   = 28, -- (event, creature)
    -- UNUSED                                   = 29, -- (event, creature)
    CREATURE_EVENT_ON_DUMMY_EFFECT              = 30, -- (event, caster, spellid, effindex, creature)
    CREATURE_EVENT_ON_QUEST_ACCEPT              = 31, -- (event, player, creature, quest) - Can return true
    -- UNUSED                                   = 32, -- (event, creature)
    -- UNUSED                                   = 33, -- (event, creature)
    CREATURE_EVENT_ON_QUEST_REWARD              = 34, -- (event, player, creature, quest, opt) - Can return true
    CREATURE_EVENT_ON_DIALOG_STATUS             = 35, -- (event, player, creature)
    CREATURE_EVENT_ON_ADD                       = 36, -- (event, creature)
    CREATURE_EVENT_ON_REMOVE                    = 37, -- (event, creature)
    CREATURE_EVENT_COUNT                        = 38
}

GameObjectEvents = {
    GAMEOBJECT_EVENT_ON_AIUPDATE            = 1,  -- (event, go, diff)
    GAMEOBJECT_EVENT_ON_SPAWN               = 2,  -- (event, go)
    GAMEOBJECT_EVENT_ON_DUMMY_EFFECT        = 3,  -- (event, caster, spellid, effindex, go) - Can return true to stop normal action
    GAMEOBJECT_EVENT_ON_QUEST_ACCEPT        = 4,  -- (event, player, go, quest) - Can return true to stop normal action
    GAMEOBJECT_EVENT_ON_QUEST_REWARD        = 5,  -- (event, player, go, quest, opt) - Can return true to stop normal action
    GAMEOBJECT_EVENT_ON_DIALOG_STATUS       = 6,  -- (event, player, go)
    GAMEOBJECT_EVENT_ON_DESTROYED           = 7,  -- (event, go, attacker)
    GAMEOBJECT_EVENT_ON_DAMAGED             = 8,  -- (event, go, attacker)
    GAMEOBJECT_EVENT_ON_LOOT_STATE_CHANGE   = 9,  -- (event, go, state)
    GAMEOBJECT_EVENT_ON_GO_STATE_CHANGED    = 10, -- (event, go, state)
    -- UNUSED                               = 11, -- (event, gameobject)
    GAMEOBJECT_EVENT_ON_ADD                 = 12, -- (event, gameobject)
    GAMEOBJECT_EVENT_ON_REMOVE              = 13, -- (event, gameobject)
    GAMEOBJECT_EVENT_ON_USE                 = 14, -- (event, go, player) - Can return true to stop normal action
    GAMEOBJECT_EVENT_COUNT                  = 15
}

GroupEvents = {
    GROUP_EVENT_ON_MEMBER_ADD        = 1,  -- (event, group, guid)
    GROUP_EVENT_ON_MEMBER_INVITE     = 2,  -- (event, group, guid)
    GROUP_EVENT_ON_MEMBER_REMOVE     = 3,  -- (event, group, guid, method, kicker, reason)
    GROUP_EVENT_ON_LEADER_CHANGE     = 4,  -- (event, group, newLeaderGuid, oldLeaderGuid)
    GROUP_EVENT_ON_DISBAND           = 5,  -- (event, group)
    GROUP_EVENT_ON_CREATE            = 6,  -- (event, group, leaderGuid, groupType)
    GROUP_EVENT_COUNT                = 7
}

GuildEvents = {
    GUILD_EVENT_ON_ADD_MEMBER        = 1,  -- (event, guild, player, rank)
    GUILD_EVENT_ON_REMOVE_MEMBER     = 2,  -- (event, guild, player, isDisbanding)
    GUILD_EVENT_ON_MOTD_CHANGE       = 3,  -- (event, guild, newMotd)
    GUILD_EVENT_ON_INFO_CHANGE       = 4,  -- (event, guild, newInfo)
    GUILD_EVENT_ON_CREATE            = 5,  -- (event, guild, leader, name)  // Not on TC
    GUILD_EVENT_ON_DISBAND           = 6,  -- (event, guild)
    GUILD_EVENT_ON_MONEY_WITHDRAW    = 7,  -- (event, guild, player, amount, isRepair) - Can return new money amount
    GUILD_EVENT_ON_MONEY_DEPOSIT     = 8,  -- (event, guild, player, amount) - Can return new money amount
    GUILD_EVENT_ON_ITEM_MOVE         = 9,  -- (event, guild, player, item, isSrcBank, srcContainer, srcSlotId, isDestBank, destContainer, destSlotId)   // TODO
    GUILD_EVENT_ON_EVENT             = 10, -- (event, guild, eventType, plrGUIDLow1, plrGUIDLow2, newRank)  // TODO
    GUILD_EVENT_ON_BANK_EVENT        = 11, -- (event, guild, eventType, tabId, playerGUIDLow, itemOrMoney, itemStackCount, destTabId)
    GUILD_EVENT_COUNT                = 12
}

InstanceEvents = {
    INSTANCE_EVENT_ON_INITIALIZE                  = 1,  -- (event, instance_data, map)
    INSTANCE_EVENT_ON_LOAD                        = 2,  -- (event, instance_data, map)
    INSTANCE_EVENT_ON_UPDATE                      = 3,  -- (event, instance_data, map, diff)
    INSTANCE_EVENT_ON_PLAYER_ENTER                = 4,  -- (event, instance_data, map, player)
    INSTANCE_EVENT_ON_CREATURE_CREATE             = 5,  -- (event, instance_data, map, creature)
    INSTANCE_EVENT_ON_GAMEOBJECT_CREATE           = 6,  -- (event, instance_data, map, go)
    INSTANCE_EVENT_ON_CHECK_ENCOUNTER_IN_PROGRESS = 7,  -- (event, instance_data, map)

    INSTANCE_EVENT_COUNT                          = 8
}

ItemEvents = {
    ITEM_EVENT_ON_DUMMY_EFFECT    = 1,  -- (event, caster, spellid, effindex, item)
    ITEM_EVENT_ON_USE             = 2,  -- (event, player, item, target) - Can return false to stop the spell casting
    ITEM_EVENT_ON_QUEST_ACCEPT    = 3,  -- (event, player, item, quest) - Can return true
    ITEM_EVENT_ON_EXPIRE          = 4,  -- (event, player, itemid) - Can return true
    ITEM_EVENT_ON_REMOVE          = 5,  -- (event, player, item) - Can return true

    ITEM_EVENT_COUNT              = 6
}

GossipEvents = {
    GOSSIP_EVENT_ON_HELLO     = 1,  -- (event, player, object) - Object is the Creature/GameObject/Item. Can return false to do default action. For item gossip can return false to stop spell casting.
    GOSSIP_EVENT_ON_SELECT    = 2,  -- (event, player, object, sender, intid, code, menu_id) - Object is the Creature/GameObject/Item/Player, menu_id is only for player gossip. Can return false to do default action.

    GOSSIP_EVENT_COUNT        = 3
}

PacketEvents = {
    PACKET_EVENT_ON_PACKET_RECEIVE         = 5,  -- (event, packet, player) - Player only if accessible. Can return false, newPacket
    PACKET_EVENT_ON_PACKET_RECEIVE_UNKNOWN = 6,  -- Not Implemented
    PACKET_EVENT_ON_PACKET_SEND            = 7,  -- (event, packet, player) - Player only if accessible. Can return false, newPacket

    PACKET_EVENT_COUNT                     = 8
}

PlayerEvents = {
    PLAYER_EVENT_ON_CHARACTER_CREATE        = 1,  -- (event, player)
    PLAYER_EVENT_ON_CHARACTER_DELETE        = 2,  -- (event, guid)
    PLAYER_EVENT_ON_LOGIN                   = 3,  -- (event, player)
    PLAYER_EVENT_ON_LOGOUT                  = 4,  -- (event, player)
    PLAYER_EVENT_ON_SPELL_CAST              = 5,  -- (event, player, spell, skipCheck)
    PLAYER_EVENT_ON_KILL_PLAYER             = 6,  -- (event, killer, killed)
    PLAYER_EVENT_ON_KILL_CREATURE           = 7,  -- (event, killer, killed)
    PLAYER_EVENT_ON_KILLED_BY_CREATURE      = 8,  -- (event, killer, killed)
    PLAYER_EVENT_ON_DUEL_REQUEST            = 9,  -- (event, target, challenger)
    PLAYER_EVENT_ON_DUEL_START              = 10, -- (event, player1, player2)
    PLAYER_EVENT_ON_DUEL_END                = 11, -- (event, winner, loser, type)
    PLAYER_EVENT_ON_GIVE_XP                 = 12, -- (event, player, amount, victim, source) - Can return new XP amount
    PLAYER_EVENT_ON_LEVEL_CHANGE            = 13, -- (event, player, oldLevel)
    PLAYER_EVENT_ON_MONEY_CHANGE            = 14, -- (event, player, amount) - Can return new money amount
    PLAYER_EVENT_ON_REPUTATION_CHANGE       = 15, -- (event, player, factionId, standing, incremental) - Can return new standing -> if standing == -1, it will prevent default action (rep gain)
    PLAYER_EVENT_ON_TALENTS_CHANGE          = 16, -- (event, player, points)
    PLAYER_EVENT_ON_TALENTS_RESET           = 17, -- (event, player, noCost)
    PLAYER_EVENT_ON_CHAT                    = 18, -- (event, player, msg, Type, lang) - Can return false, newMessage
    PLAYER_EVENT_ON_WHISPER                 = 19, -- (event, player, msg, Type, lang, receiver) - Can return false, newMessage
    PLAYER_EVENT_ON_GROUP_CHAT              = 20, -- (event, player, msg, Type, lang, group) - Can return false, newMessage
    PLAYER_EVENT_ON_GUILD_CHAT              = 21, -- (event, player, msg, Type, lang, guild) - Can return false, newMessage
    PLAYER_EVENT_ON_CHANNEL_CHAT            = 22, -- (event, player, msg, Type, lang, channel) - channel is negative for custom channels. Can return false, newMessage
    PLAYER_EVENT_ON_EMOTE                   = 23, -- (event, player, emote) - Not triggered on any known emote
    PLAYER_EVENT_ON_TEXT_EMOTE              = 24, -- (event, player, textEmote, emoteNum, guid)
    PLAYER_EVENT_ON_SAVE                    = 25, -- (event, player)
    PLAYER_EVENT_ON_BIND_TO_INSTANCE        = 26, -- (event, player, difficulty, mapid, permanent)
    PLAYER_EVENT_ON_UPDATE_ZONE             = 27, -- (event, player, newZone, newArea)
    PLAYER_EVENT_ON_MAP_CHANGE              = 28, -- (event, player)

    -- Custom
    PLAYER_EVENT_ON_EQUIP                   = 29, -- (event, player, item, bag, slot)
    PLAYER_EVENT_ON_FIRST_LOGIN             = 30, -- (event, player)
    PLAYER_EVENT_ON_CAN_USE_ITEM            = 31, -- (event, player, itemEntry) - Can return InventoryResult enum value
    PLAYER_EVENT_ON_LOOT_ITEM               = 32, -- (event, player, item, count)
    PLAYER_EVENT_ON_ENTER_COMBAT            = 33, -- (event, player, enemy)
    PLAYER_EVENT_ON_LEAVE_COMBAT            = 34, -- (event, player)
    PLAYER_EVENT_ON_REPOP                   = 35, -- (event, player)
    PLAYER_EVENT_ON_RESURRECT               = 36, -- (event, player)
    PLAYER_EVENT_ON_LOOT_MONEY              = 37, -- (event, player, amount)
    PLAYER_EVENT_ON_QUEST_ABANDON           = 38, -- (event, player, questId)
    PLAYER_EVENT_ON_LEARN_TALENTS           = 39, -- (event, player, talentId, talentRank, spellid)
    -- UNUSED                               = 40, -- (event, player)
    -- UNUSED                               = 41, -- (event, player)
    PLAYER_EVENT_ON_COMMAND                 = 42, -- (event, player, command, chatHandler) - player is nil if command used from console. Can return false
    PLAYER_EVENT_ON_PET_ADDED_TO_WORLD      = 43, -- (event, player, pet)
    PLAYER_EVENT_ON_LEARN_SPELL             = 44, -- (event, player, spellId)
    PLAYER_EVENT_ON_ACHIEVEMENT_COMPLETE    = 45, -- (event, player, achievement)
    PLAYER_EVENT_ON_FFAPVP_CHANGE           = 46, -- (event, player, hasFfaPvp)
    PLAYER_EVENT_ON_UPDATE_AREA             = 47, -- (event, player, oldArea, newArea)
    PLAYER_EVENT_ON_CAN_INIT_TRADE          = 48, -- (event, player, target) - Can return false to prevent the trade
    PLAYER_EVENT_ON_CAN_SEND_MAIL           = 49, -- (event, player, receiverGuid, mailbox, subject, body, money, cod, item) - Can return false to prevent sending the mail
    PLAYER_EVENT_ON_CAN_JOIN_LFG            = 50, -- (event, player, roles, dungeons, comment) - Can return false to prevent queueing
    PLAYER_EVENT_ON_QUEST_REWARD_ITEM       = 51, -- (event, player, item, count)
    PLAYER_EVENT_ON_CREATE_ITEM             = 52, -- (event, player, item, count)
    PLAYER_EVENT_ON_STORE_NEW_ITEM          = 53, -- (event, player, item, count)
    PLAYER_EVENT_ON_COMPLETE_QUEST          = 54, -- (event, player, quest)
    PLAYER_EVENT_ON_CAN_GROUP_INVITE        = 55, -- (event, player, memberName) - Can return false to prevent inviting
    PLAYER_EVENT_ON_GROUP_ROLL_REWARD_ITEM  = 56, -- (event, player, item, count, voteType, roll)
    PLAYER_EVENT_ON_BG_DESERTION            = 57, -- (event, player, type)
}

ServerEvents = {
    -- Server
    SERVER_EVENT_ON_NETWORK_START          = 1,  -- Not Implemented
    SERVER_EVENT_ON_NETWORK_STOP           = 2,  -- Not Implemented
    SERVER_EVENT_ON_SOCKET_OPEN            = 3,  -- Not Implemented
    SERVER_EVENT_ON_SOCKET_CLOSE           = 4,  -- Not Implemented
    SERVER_EVENT_ON_PACKET_RECEIVE         = 5,  -- (event, packet, player) - Player only if accessible. Can return false, newPacket
    SERVER_EVENT_ON_PACKET_RECEIVE_UNKNOWN = 6,  -- Not Implemented
    SERVER_EVENT_ON_PACKET_SEND            = 7,  -- (event, packet, player) - Player only if accessible. Can return false, newPacket

    -- World
    WORLD_EVENT_ON_OPEN_STATE_CHANGE       = 8,  -- (event, open) - Needs core support on Mangos
    WORLD_EVENT_ON_CONFIG_LOAD             = 9,  -- (event, reload)
    -- UNUSED                              = 10,
    WORLD_EVENT_ON_SHUTDOWN_INIT           = 11, -- (event, code, mask)
    WORLD_EVENT_ON_SHUTDOWN_CANCEL         = 12, -- (event)
    WORLD_EVENT_ON_UPDATE                  = 13, -- (event, diff)
    WORLD_EVENT_ON_STARTUP                 = 14, -- (event)
    WORLD_EVENT_ON_SHUTDOWN                = 15, -- (event)

    -- Eluna
    ELUNA_EVENT_ON_LUA_STATE_CLOSE         = 16, -- (event) - triggers just before shutting down eluna (on shutdown and restart)

    -- Map
    MAP_EVENT_ON_CREATE                    = 17, -- (event, map)
    MAP_EVENT_ON_DESTROY                   = 18, -- (event, map)
    MAP_EVENT_ON_GRID_LOAD                 = 19, -- Not Implemented
    MAP_EVENT_ON_GRID_UNLOAD               = 20, -- Not Implemented
    MAP_EVENT_ON_PLAYER_ENTER              = 21, -- (event, map, player)
    MAP_EVENT_ON_PLAYER_LEAVE              = 22, -- (event, map, player)
    MAP_EVENT_ON_UPDATE                    = 23, -- (event, map, diff)

    -- Area trigger
    TRIGGER_EVENT_ON_TRIGGER               = 24, -- (event, player, triggerId) - Can return true

    -- Weather
    WEATHER_EVENT_ON_CHANGE                = 25, -- (event, zoneId, state, grade)

    -- Auction house
    AUCTION_EVENT_ON_ADD                   = 26, -- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)
    AUCTION_EVENT_ON_REMOVE                = 27, -- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)
    AUCTION_EVENT_ON_SUCCESSFUL            = 28, -- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)
    AUCTION_EVENT_ON_EXPIRE                = 29, -- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)

    -- AddOns
    ADDON_EVENT_ON_MESSAGE                 = 30, -- (event, sender, type, prefix, msg, target) - target can be nil/whisper_target/guild/group/channel. Can return false

    WORLD_EVENT_ON_DELETE_CREATURE         = 31, -- (event, creature)
    WORLD_EVENT_ON_DELETE_GAMEOBJECT       = 32, -- (event, gameobject)

    -- Eluna
    ELUNA_EVENT_ON_LUA_STATE_OPEN          = 33, -- (event) - triggers after all scripts are loaded

    GAME_EVENT_START                       = 34, -- (event, gameeventid)
    GAME_EVENT_STOP                        = 35, -- (event, gameeventid)
}


--[[ UpdateFields  ]]--

EObjectFields = {
    OBJECT_FIELD_GUID        = 0x0000, -- Size: 2, Type: LONG, Flags: PUBLIC
    OBJECT_FIELD_TYPE        = 0x0002, -- Size: 1, Type: INT, Flags: PUBLIC
    OBJECT_FIELD_ENTRY       = 0x0003, -- Size: 1, Type: INT, Flags: PUBLIC
    OBJECT_FIELD_SCALE_X     = 0x0004, -- Size: 1, Type: FLOAT, Flags: PUBLIC
    OBJECT_FIELD_PADDING     = 0x0005, -- Size: 1, Type: INT, Flags: NONE
    OBJECT_END               = 0x0006
}

EItemFields = {
    ITEM_FIELD_OWNER                = EObjectFields.OBJECT_END + 0x0000, -- Size: 2, Type: LONG, Flags: PUBLIC
    ITEM_FIELD_CONTAINED            = EObjectFields.OBJECT_END + 0x0002, -- Size: 2, Type: LONG, Flags: PUBLIC
    ITEM_FIELD_CREATOR              = EObjectFields.OBJECT_END + 0x0004, -- Size: 2, Type: LONG, Flags: PUBLIC
    ITEM_FIELD_GIFTCREATOR          = EObjectFields.OBJECT_END + 0x0006, -- Size: 2, Type: LONG, Flags: PUBLIC
    ITEM_FIELD_STACK_COUNT          = EObjectFields.OBJECT_END + 0x0008, -- Size: 1, Type: INT, Flags: OWNER, ITEM_OWNER
    ITEM_FIELD_DURATION             = EObjectFields.OBJECT_END + 0x0009, -- Size: 1, Type: INT, Flags: OWNER, ITEM_OWNER
    ITEM_FIELD_SPELL_CHARGES        = EObjectFields.OBJECT_END + 0x000A, -- Size: 5, Type: INT, Flags: OWNER, ITEM_OWNER
    ITEM_FIELD_FLAGS                = EObjectFields.OBJECT_END + 0x000F, -- Size: 1, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_1_1      = EObjectFields.OBJECT_END + 0x0010, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_1_3      = EObjectFields.OBJECT_END + 0x0012, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_2_1      = EObjectFields.OBJECT_END + 0x0013, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_2_3      = EObjectFields.OBJECT_END + 0x0015, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_3_1      = EObjectFields.OBJECT_END + 0x0016, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_3_3      = EObjectFields.OBJECT_END + 0x0018, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_4_1      = EObjectFields.OBJECT_END + 0x0019, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_4_3      = EObjectFields.OBJECT_END + 0x001B, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_5_1      = EObjectFields.OBJECT_END + 0x001C, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_5_3      = EObjectFields.OBJECT_END + 0x001E, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_6_1      = EObjectFields.OBJECT_END + 0x001F, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_6_3      = EObjectFields.OBJECT_END + 0x0021, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_7_1      = EObjectFields.OBJECT_END + 0x0022, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_7_3      = EObjectFields.OBJECT_END + 0x0024, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_8_1      = EObjectFields.OBJECT_END + 0x0025, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_8_3      = EObjectFields.OBJECT_END + 0x0027, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_9_1      = EObjectFields.OBJECT_END + 0x0028, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_9_3      = EObjectFields.OBJECT_END + 0x002A, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_10_1     = EObjectFields.OBJECT_END + 0x002B, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_10_3     = EObjectFields.OBJECT_END + 0x002D, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_11_1     = EObjectFields.OBJECT_END + 0x002E, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_11_3     = EObjectFields.OBJECT_END + 0x0030, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_12_1     = EObjectFields.OBJECT_END + 0x0031, -- Size: 2, Type: INT, Flags: PUBLIC
    ITEM_FIELD_ENCHANTMENT_12_3     = EObjectFields.OBJECT_END + 0x0033, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    ITEM_FIELD_PROPERTY_SEED        = EObjectFields.OBJECT_END + 0x0034, -- Size: 1, Type: INT, Flags: PUBLIC
    ITEM_FIELD_RANDOM_PROPERTIES_ID = EObjectFields.OBJECT_END + 0x0035, -- Size: 1, Type: INT, Flags: PUBLIC
    ITEM_FIELD_DURABILITY           = EObjectFields.OBJECT_END + 0x0036, -- Size: 1, Type: INT, Flags: OWNER, ITEM_OWNER
    ITEM_FIELD_MAXDURABILITY        = EObjectFields.OBJECT_END + 0x0037, -- Size: 1, Type: INT, Flags: OWNER, ITEM_OWNER
    ITEM_FIELD_CREATE_PLAYED_TIME   = EObjectFields.OBJECT_END + 0x0038, -- Size: 1, Type: INT, Flags: PUBLIC
    ITEM_FIELD_PAD                  = EObjectFields.OBJECT_END + 0x0039, -- Size: 1, Type: INT, Flags: NONE
    ITEM_END                        = EObjectFields.OBJECT_END + 0x003A
}

EContainerFields = {
    CONTAINER_FIELD_NUM_SLOTS    = EItemFields.ITEM_END + 0x0000, -- Size: 1, Type: INT, Flags: PUBLIC
    CONTAINER_ALIGN_PAD          = EItemFields.ITEM_END + 0x0001, -- Size: 1, Type: BYTES, Flags: NONE
    CONTAINER_FIELD_SLOT_1       = EItemFields.ITEM_END + 0x0002, -- Size: 72, Type: LONG, Flags: PUBLIC
    CONTAINER_END                = EItemFields.ITEM_END + 0x004A
}

EUnitFields = {
    UNIT_FIELD_CHARM                          = EObjectFields.OBJECT_END + 0x0000, -- Size: 2, Type: LONG, Flags: PUBLIC
    UNIT_FIELD_SUMMON                         = EObjectFields.OBJECT_END + 0x0002, -- Size: 2, Type: LONG, Flags: PUBLIC
    UNIT_FIELD_CRITTER                        = EObjectFields.OBJECT_END + 0x0004, -- Size: 2, Type: LONG, Flags: PRIVATE
    UNIT_FIELD_CHARMEDBY                      = EObjectFields.OBJECT_END + 0x0006, -- Size: 2, Type: LONG, Flags: PUBLIC
    UNIT_FIELD_SUMMONEDBY                     = EObjectFields.OBJECT_END + 0x0008, -- Size: 2, Type: LONG, Flags: PUBLIC
    UNIT_FIELD_CREATEDBY                      = EObjectFields.OBJECT_END + 0x000A, -- Size: 2, Type: LONG, Flags: PUBLIC
    UNIT_FIELD_TARGET                         = EObjectFields.OBJECT_END + 0x000C, -- Size: 2, Type: LONG, Flags: PUBLIC
    UNIT_FIELD_CHANNEL_OBJECT                 = EObjectFields.OBJECT_END + 0x000E, -- Size: 2, Type: LONG, Flags: PUBLIC
    UNIT_CHANNEL_SPELL                        = EObjectFields.OBJECT_END + 0x0010, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_BYTES_0                        = EObjectFields.OBJECT_END + 0x0011, -- Size: 1, Type: BYTES, Flags: PUBLIC
    UNIT_FIELD_HEALTH                         = EObjectFields.OBJECT_END + 0x0012, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER1                         = EObjectFields.OBJECT_END + 0x0013, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER2                         = EObjectFields.OBJECT_END + 0x0014, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER3                         = EObjectFields.OBJECT_END + 0x0015, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER4                         = EObjectFields.OBJECT_END + 0x0016, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER5                         = EObjectFields.OBJECT_END + 0x0017, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER6                         = EObjectFields.OBJECT_END + 0x0018, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER7                         = EObjectFields.OBJECT_END + 0x0019, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXHEALTH                      = EObjectFields.OBJECT_END + 0x001A, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXPOWER1                      = EObjectFields.OBJECT_END + 0x001B, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXPOWER2                      = EObjectFields.OBJECT_END + 0x001C, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXPOWER3                      = EObjectFields.OBJECT_END + 0x001D, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXPOWER4                      = EObjectFields.OBJECT_END + 0x001E, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXPOWER5                      = EObjectFields.OBJECT_END + 0x001F, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXPOWER6                      = EObjectFields.OBJECT_END + 0x0020, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MAXPOWER7                      = EObjectFields.OBJECT_END + 0x0021, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_POWER_REGEN_FLAT_MODIFIER      = EObjectFields.OBJECT_END + 0x0022, -- Size: 7, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POWER_REGEN_INTERRUPTED_FLAT_MODIFIER = EObjectFields.OBJECT_END + 0x0029, -- Size: 7, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_LEVEL                          = EObjectFields.OBJECT_END + 0x0030, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_FACTIONTEMPLATE                = EObjectFields.OBJECT_END + 0x0031, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_VIRTUAL_ITEM_SLOT_ID                 = EObjectFields.OBJECT_END + 0x0032, -- Size: 3, Type: INT, Flags: PUBLIC
    UNIT_FIELD_FLAGS                          = EObjectFields.OBJECT_END + 0x0035, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_FLAGS_2                        = EObjectFields.OBJECT_END + 0x0036, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_AURASTATE                      = EObjectFields.OBJECT_END + 0x0037, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_BASEATTACKTIME                 = EObjectFields.OBJECT_END + 0x0038, -- Size: 2, Type: INT, Flags: PUBLIC
    UNIT_FIELD_RANGEDATTACKTIME               = EObjectFields.OBJECT_END + 0x003A, -- Size: 1, Type: INT, Flags: PRIVATE
    UNIT_FIELD_BOUNDINGRADIUS                 = EObjectFields.OBJECT_END + 0x003B, -- Size: 1, Type: FLOAT, Flags: PUBLIC
    UNIT_FIELD_COMBATREACH                    = EObjectFields.OBJECT_END + 0x003C, -- Size: 1, Type: FLOAT, Flags: PUBLIC
    UNIT_FIELD_DISPLAYID                      = EObjectFields.OBJECT_END + 0x003D, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_NATIVEDISPLAYID                = EObjectFields.OBJECT_END + 0x003E, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MOUNTDISPLAYID                 = EObjectFields.OBJECT_END + 0x003F, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_MINDAMAGE                      = EObjectFields.OBJECT_END + 0x0040, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER, PARTY_LEADER
    UNIT_FIELD_MAXDAMAGE                      = EObjectFields.OBJECT_END + 0x0041, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER, PARTY_LEADER
    UNIT_FIELD_MINOFFHANDDAMAGE               = EObjectFields.OBJECT_END + 0x0042, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER, PARTY_LEADER
    UNIT_FIELD_MAXOFFHANDDAMAGE               = EObjectFields.OBJECT_END + 0x0043, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER, PARTY_LEADER
    UNIT_FIELD_BYTES_1                        = EObjectFields.OBJECT_END + 0x0044, -- Size: 1, Type: BYTES, Flags: PUBLIC
    UNIT_FIELD_PETNUMBER                      = EObjectFields.OBJECT_END + 0x0045, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_PET_NAME_TIMESTAMP             = EObjectFields.OBJECT_END + 0x0046, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_PETEXPERIENCE                  = EObjectFields.OBJECT_END + 0x0047, -- Size: 1, Type: INT, Flags: OWNER
    UNIT_FIELD_PETNEXTLEVELEXP                = EObjectFields.OBJECT_END + 0x0048, -- Size: 1, Type: INT, Flags: OWNER
    UNIT_DYNAMIC_FLAGS                        = EObjectFields.OBJECT_END + 0x0049, -- Size: 1, Type: INT, Flags: DYNAMIC
    UNIT_MOD_CAST_SPEED                       = EObjectFields.OBJECT_END + 0x004A, -- Size: 1, Type: FLOAT, Flags: PUBLIC
    UNIT_CREATED_BY_SPELL                     = EObjectFields.OBJECT_END + 0x004B, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_NPC_FLAGS                            = EObjectFields.OBJECT_END + 0x004C, -- Size: 1, Type: INT, Flags: DYNAMIC
    UNIT_NPC_EMOTESTATE                       = EObjectFields.OBJECT_END + 0x004D, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_STAT0                          = EObjectFields.OBJECT_END + 0x004E, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_STAT1                          = EObjectFields.OBJECT_END + 0x004F, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_STAT2                          = EObjectFields.OBJECT_END + 0x0050, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_STAT3                          = EObjectFields.OBJECT_END + 0x0051, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_STAT4                          = EObjectFields.OBJECT_END + 0x0052, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POSSTAT0                       = EObjectFields.OBJECT_END + 0x0053, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POSSTAT1                       = EObjectFields.OBJECT_END + 0x0054, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POSSTAT2                       = EObjectFields.OBJECT_END + 0x0055, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POSSTAT3                       = EObjectFields.OBJECT_END + 0x0056, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POSSTAT4                       = EObjectFields.OBJECT_END + 0x0057, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_NEGSTAT0                       = EObjectFields.OBJECT_END + 0x0058, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_NEGSTAT1                       = EObjectFields.OBJECT_END + 0x0059, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_NEGSTAT2                       = EObjectFields.OBJECT_END + 0x005A, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_NEGSTAT3                       = EObjectFields.OBJECT_END + 0x005B, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_NEGSTAT4                       = EObjectFields.OBJECT_END + 0x005C, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_RESISTANCES                    = EObjectFields.OBJECT_END + 0x005D, -- Size: 7, Type: INT, Flags: PRIVATE, OWNER, PARTY_LEADER
    UNIT_FIELD_RESISTANCEBUFFMODSPOSITIVE     = EObjectFields.OBJECT_END + 0x0064, -- Size: 7, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_RESISTANCEBUFFMODSNEGATIVE     = EObjectFields.OBJECT_END + 0x006B, -- Size: 7, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_BASE_MANA                      = EObjectFields.OBJECT_END + 0x0072, -- Size: 1, Type: INT, Flags: PUBLIC
    UNIT_FIELD_BASE_HEALTH                    = EObjectFields.OBJECT_END + 0x0073, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_BYTES_2                        = EObjectFields.OBJECT_END + 0x0074, -- Size: 1, Type: BYTES, Flags: PUBLIC
    UNIT_FIELD_ATTACK_POWER                   = EObjectFields.OBJECT_END + 0x0075, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_ATTACK_POWER_MODS              = EObjectFields.OBJECT_END + 0x0076, -- Size: 1, Type: TWO_SHORT, Flags: PRIVATE, OWNER
    UNIT_FIELD_ATTACK_POWER_MULTIPLIER        = EObjectFields.OBJECT_END + 0x0077, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_RANGED_ATTACK_POWER            = EObjectFields.OBJECT_END + 0x0078, -- Size: 1, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_RANGED_ATTACK_POWER_MODS       = EObjectFields.OBJECT_END + 0x0079, -- Size: 1, Type: TWO_SHORT, Flags: PRIVATE, OWNER
    UNIT_FIELD_RANGED_ATTACK_POWER_MULTIPLIER = EObjectFields.OBJECT_END + 0x007A, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_MINRANGEDDAMAGE                = EObjectFields.OBJECT_END + 0x007B, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_MAXRANGEDDAMAGE                = EObjectFields.OBJECT_END + 0x007C, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POWER_COST_MODIFIER            = EObjectFields.OBJECT_END + 0x007D, -- Size: 7, Type: INT, Flags: PRIVATE, OWNER
    UNIT_FIELD_POWER_COST_MULTIPLIER          = EObjectFields.OBJECT_END + 0x0084, -- Size: 7, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_MAXHEALTHMODIFIER              = EObjectFields.OBJECT_END + 0x008B, -- Size: 1, Type: FLOAT, Flags: PRIVATE, OWNER
    UNIT_FIELD_HOVERHEIGHT                    = EObjectFields.OBJECT_END + 0x008C, -- Size: 1, Type: FLOAT, Flags: PUBLIC
    UNIT_FIELD_PADDING                        = EObjectFields.OBJECT_END + 0x008D, -- Size: 1, Type: INT, Flags: NONE
    UNIT_END                                  = EObjectFields.OBJECT_END + 0x008E,
}

EPlayerFields =  {
    PLAYER_DUEL_ARBITER                       = EUnitFields.UNIT_END + 0x0000, -- Size: 2, Type: LONG, Flags: PUBLIC
    PLAYER_FLAGS                              = EUnitFields.UNIT_END + 0x0002, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_GUILDID                            = EUnitFields.UNIT_END + 0x0003, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_GUILDRANK                          = EUnitFields.UNIT_END + 0x0004, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_BYTES                              = EUnitFields.UNIT_END + 0x0005, -- Size: 1, Type: BYTES, Flags: PUBLIC
    PLAYER_BYTES_2                            = EUnitFields.UNIT_END + 0x0006, -- Size: 1, Type: BYTES, Flags: PUBLIC
    PLAYER_BYTES_3                            = EUnitFields.UNIT_END + 0x0007, -- Size: 1, Type: BYTES, Flags: PUBLIC
    PLAYER_DUEL_TEAM                          = EUnitFields.UNIT_END + 0x0008, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_GUILD_TIMESTAMP                    = EUnitFields.UNIT_END + 0x0009, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_QUEST_LOG_1_1                      = EUnitFields.UNIT_END + 0x000A, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_1_2                      = EUnitFields.UNIT_END + 0x000B, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_1_3                      = EUnitFields.UNIT_END + 0x000C, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_1_4                      = EUnitFields.UNIT_END + 0x000E, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_2_1                      = EUnitFields.UNIT_END + 0x000F, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_2_2                      = EUnitFields.UNIT_END + 0x0010, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_2_3                      = EUnitFields.UNIT_END + 0x0011, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_2_5                      = EUnitFields.UNIT_END + 0x0013, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_3_1                      = EUnitFields.UNIT_END + 0x0014, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_3_2                      = EUnitFields.UNIT_END + 0x0015, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_3_3                      = EUnitFields.UNIT_END + 0x0016, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_3_5                      = EUnitFields.UNIT_END + 0x0018, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_4_1                      = EUnitFields.UNIT_END + 0x0019, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_4_2                      = EUnitFields.UNIT_END + 0x001A, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_4_3                      = EUnitFields.UNIT_END + 0x001B, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_4_5                      = EUnitFields.UNIT_END + 0x001D, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_5_1                      = EUnitFields.UNIT_END + 0x001E, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_5_2                      = EUnitFields.UNIT_END + 0x001F, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_5_3                      = EUnitFields.UNIT_END + 0x0020, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_5_5                      = EUnitFields.UNIT_END + 0x0022, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_6_1                      = EUnitFields.UNIT_END + 0x0023, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_6_2                      = EUnitFields.UNIT_END + 0x0024, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_6_3                      = EUnitFields.UNIT_END + 0x0025, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_6_5                      = EUnitFields.UNIT_END + 0x0027, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_7_1                      = EUnitFields.UNIT_END + 0x0028, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_7_2                      = EUnitFields.UNIT_END + 0x0029, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_7_3                      = EUnitFields.UNIT_END + 0x002A, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_7_5                      = EUnitFields.UNIT_END + 0x002C, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_8_1                      = EUnitFields.UNIT_END + 0x002D, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_8_2                      = EUnitFields.UNIT_END + 0x002E, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_8_3                      = EUnitFields.UNIT_END + 0x002F, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_8_5                      = EUnitFields.UNIT_END + 0x0031, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_9_1                      = EUnitFields.UNIT_END + 0x0032, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_9_2                      = EUnitFields.UNIT_END + 0x0033, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_9_3                      = EUnitFields.UNIT_END + 0x0034, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_9_5                      = EUnitFields.UNIT_END + 0x0036, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_10_1                     = EUnitFields.UNIT_END + 0x0037, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_10_2                     = EUnitFields.UNIT_END + 0x0038, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_10_3                     = EUnitFields.UNIT_END + 0x0039, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_10_5                     = EUnitFields.UNIT_END + 0x003B, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_11_1                     = EUnitFields.UNIT_END + 0x003C, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_11_2                     = EUnitFields.UNIT_END + 0x003D, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_11_3                     = EUnitFields.UNIT_END + 0x003E, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_11_5                     = EUnitFields.UNIT_END + 0x0040, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_12_1                     = EUnitFields.UNIT_END + 0x0041, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_12_2                     = EUnitFields.UNIT_END + 0x0042, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_12_3                     = EUnitFields.UNIT_END + 0x0043, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_12_5                     = EUnitFields.UNIT_END + 0x0045, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_13_1                     = EUnitFields.UNIT_END + 0x0046, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_13_2                     = EUnitFields.UNIT_END + 0x0047, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_13_3                     = EUnitFields.UNIT_END + 0x0048, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_13_5                     = EUnitFields.UNIT_END + 0x004A, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_14_1                     = EUnitFields.UNIT_END + 0x004B, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_14_2                     = EUnitFields.UNIT_END + 0x004C, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_14_3                     = EUnitFields.UNIT_END + 0x004D, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_14_5                     = EUnitFields.UNIT_END + 0x004F, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_15_1                     = EUnitFields.UNIT_END + 0x0050, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_15_2                     = EUnitFields.UNIT_END + 0x0051, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_15_3                     = EUnitFields.UNIT_END + 0x0052, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_15_5                     = EUnitFields.UNIT_END + 0x0054, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_16_1                     = EUnitFields.UNIT_END + 0x0055, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_16_2                     = EUnitFields.UNIT_END + 0x0056, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_16_3                     = EUnitFields.UNIT_END + 0x0057, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_16_5                     = EUnitFields.UNIT_END + 0x0059, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_17_1                     = EUnitFields.UNIT_END + 0x005A, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_17_2                     = EUnitFields.UNIT_END + 0x005B, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_17_3                     = EUnitFields.UNIT_END + 0x005C, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_17_5                     = EUnitFields.UNIT_END + 0x005E, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_18_1                     = EUnitFields.UNIT_END + 0x005F, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_18_2                     = EUnitFields.UNIT_END + 0x0060, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_18_3                     = EUnitFields.UNIT_END + 0x0061, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_18_5                     = EUnitFields.UNIT_END + 0x0063, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_19_1                     = EUnitFields.UNIT_END + 0x0064, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_19_2                     = EUnitFields.UNIT_END + 0x0065, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_19_3                     = EUnitFields.UNIT_END + 0x0066, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_19_5                     = EUnitFields.UNIT_END + 0x0068, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_20_1                     = EUnitFields.UNIT_END + 0x0069, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_20_2                     = EUnitFields.UNIT_END + 0x006A, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_20_3                     = EUnitFields.UNIT_END + 0x006B, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_20_5                     = EUnitFields.UNIT_END + 0x006D, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_21_1                     = EUnitFields.UNIT_END + 0x006E, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_21_2                     = EUnitFields.UNIT_END + 0x006F, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_21_3                     = EUnitFields.UNIT_END + 0x0070, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_21_5                     = EUnitFields.UNIT_END + 0x0072, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_22_1                     = EUnitFields.UNIT_END + 0x0073, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_22_2                     = EUnitFields.UNIT_END + 0x0074, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_22_3                     = EUnitFields.UNIT_END + 0x0075, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_22_5                     = EUnitFields.UNIT_END + 0x0077, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_23_1                     = EUnitFields.UNIT_END + 0x0078, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_23_2                     = EUnitFields.UNIT_END + 0x0079, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_23_3                     = EUnitFields.UNIT_END + 0x007A, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_23_5                     = EUnitFields.UNIT_END + 0x007C, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_24_1                     = EUnitFields.UNIT_END + 0x007D, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_24_2                     = EUnitFields.UNIT_END + 0x007E, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_24_3                     = EUnitFields.UNIT_END + 0x007F, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_24_5                     = EUnitFields.UNIT_END + 0x0081, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_25_1                     = EUnitFields.UNIT_END + 0x0082, -- Size: 1, Type: INT, Flags: PARTY_MEMBER
    PLAYER_QUEST_LOG_25_2                     = EUnitFields.UNIT_END + 0x0083, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_QUEST_LOG_25_3                     = EUnitFields.UNIT_END + 0x0084, -- Size: 2, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_QUEST_LOG_25_5                     = EUnitFields.UNIT_END + 0x0086, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_VISIBLE_ITEM_1_ENTRYID             = EUnitFields.UNIT_END + 0x0087, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_1_ENCHANTMENT         = EUnitFields.UNIT_END + 0x0088, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_2_ENTRYID             = EUnitFields.UNIT_END + 0x0089, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_2_ENCHANTMENT         = EUnitFields.UNIT_END + 0x008A, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_3_ENTRYID             = EUnitFields.UNIT_END + 0x008B, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_3_ENCHANTMENT         = EUnitFields.UNIT_END + 0x008C, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_4_ENTRYID             = EUnitFields.UNIT_END + 0x008D, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_4_ENCHANTMENT         = EUnitFields.UNIT_END + 0x008E, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_5_ENTRYID             = EUnitFields.UNIT_END + 0x008F, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_5_ENCHANTMENT         = EUnitFields.UNIT_END + 0x0090, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_6_ENTRYID             = EUnitFields.UNIT_END + 0x0091, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_6_ENCHANTMENT         = EUnitFields.UNIT_END + 0x0092, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_7_ENTRYID             = EUnitFields.UNIT_END + 0x0093, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_7_ENCHANTMENT         = EUnitFields.UNIT_END + 0x0094, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_8_ENTRYID             = EUnitFields.UNIT_END + 0x0095, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_8_ENCHANTMENT         = EUnitFields.UNIT_END + 0x0096, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_9_ENTRYID             = EUnitFields.UNIT_END + 0x0097, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_9_ENCHANTMENT         = EUnitFields.UNIT_END + 0x0098, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_10_ENTRYID            = EUnitFields.UNIT_END + 0x0099, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_10_ENCHANTMENT        = EUnitFields.UNIT_END + 0x009A, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_11_ENTRYID            = EUnitFields.UNIT_END + 0x009B, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_11_ENCHANTMENT        = EUnitFields.UNIT_END + 0x009C, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_12_ENTRYID            = EUnitFields.UNIT_END + 0x009D, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_12_ENCHANTMENT        = EUnitFields.UNIT_END + 0x009E, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_13_ENTRYID            = EUnitFields.UNIT_END + 0x009F, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_13_ENCHANTMENT        = EUnitFields.UNIT_END + 0x00A0, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_14_ENTRYID            = EUnitFields.UNIT_END + 0x00A1, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_14_ENCHANTMENT        = EUnitFields.UNIT_END + 0x00A2, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_15_ENTRYID            = EUnitFields.UNIT_END + 0x00A3, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_15_ENCHANTMENT        = EUnitFields.UNIT_END + 0x00A4, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_16_ENTRYID            = EUnitFields.UNIT_END + 0x00A5, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_16_ENCHANTMENT        = EUnitFields.UNIT_END + 0x00A6, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_17_ENTRYID            = EUnitFields.UNIT_END + 0x00A7, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_17_ENCHANTMENT        = EUnitFields.UNIT_END + 0x00A8, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_18_ENTRYID            = EUnitFields.UNIT_END + 0x00A9, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_18_ENCHANTMENT        = EUnitFields.UNIT_END + 0x00AA, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_19_ENTRYID            = EUnitFields.UNIT_END + 0x00AB, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_VISIBLE_ITEM_19_ENCHANTMENT        = EUnitFields.UNIT_END + 0x00AC, -- Size: 1, Type: TWO_SHORT, Flags: PUBLIC
    PLAYER_CHOSEN_TITLE                       = EUnitFields.UNIT_END + 0x00AD, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_FAKE_INEBRIATION                   = EUnitFields.UNIT_END + 0x00AE, -- Size: 1, Type: INT, Flags: PUBLIC
    PLAYER_FIELD_PAD_0                        = EUnitFields.UNIT_END + 0x00AF, -- Size: 1, Type: INT, Flags: NONE
    PLAYER_FIELD_INV_SLOT_HEAD                = EUnitFields.UNIT_END + 0x00B0, -- Size: 46, Type: LONG, Flags: PRIVATE
    PLAYER_FIELD_PACK_SLOT_1                  = EUnitFields.UNIT_END + 0x00DE, -- Size: 32, Type: LONG, Flags: PRIVATE
    PLAYER_FIELD_BANK_SLOT_1                  = EUnitFields.UNIT_END + 0x00FE, -- Size: 56, Type: LONG, Flags: PRIVATE
    PLAYER_FIELD_BANKBAG_SLOT_1               = EUnitFields.UNIT_END + 0x0136, -- Size: 14, Type: LONG, Flags: PRIVATE
    PLAYER_FIELD_VENDORBUYBACK_SLOT_1         = EUnitFields.UNIT_END + 0x0144, -- Size: 24, Type: LONG, Flags: PRIVATE
    PLAYER_FIELD_KEYRING_SLOT_1               = EUnitFields.UNIT_END + 0x015C, -- Size: 64, Type: LONG, Flags: PRIVATE
    PLAYER_FIELD_CURRENCYTOKEN_SLOT_1         = EUnitFields.UNIT_END + 0x019C, -- Size: 64, Type: LONG, Flags: PRIVATE
    PLAYER_FARSIGHT                           = EUnitFields.UNIT_END + 0x01DC, -- Size: 2, Type: LONG, Flags: PRIVATE
    PLAYER__FIELD_KNOWN_TITLES                = EUnitFields.UNIT_END + 0x01DE, -- Size: 2, Type: LONG, Flags: PRIVATE
    PLAYER__FIELD_KNOWN_TITLES1               = EUnitFields.UNIT_END + 0x01E0, -- Size: 2, Type: LONG, Flags: PRIVATE
    PLAYER__FIELD_KNOWN_TITLES2               = EUnitFields.UNIT_END + 0x01E2, -- Size: 2, Type: LONG, Flags: PRIVATE
    PLAYER_FIELD_KNOWN_CURRENCIES             = EUnitFields.UNIT_END + 0x01E4, -- Size: 2, Type: LONG, Flags: PRIVATE
    PLAYER_XP                                 = EUnitFields.UNIT_END + 0x01E6, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_NEXT_LEVEL_XP                      = EUnitFields.UNIT_END + 0x01E7, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_SKILL_INFO_1_1                     = EUnitFields.UNIT_END + 0x01E8, -- Size: 384, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_CHARACTER_POINTS1                  = EUnitFields.UNIT_END + 0x0368, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_CHARACTER_POINTS2                  = EUnitFields.UNIT_END + 0x0369, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_TRACK_CREATURES                    = EUnitFields.UNIT_END + 0x036A, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_TRACK_RESOURCES                    = EUnitFields.UNIT_END + 0x036B, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_BLOCK_PERCENTAGE                   = EUnitFields.UNIT_END + 0x036C, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_DODGE_PERCENTAGE                   = EUnitFields.UNIT_END + 0x036D, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_PARRY_PERCENTAGE                   = EUnitFields.UNIT_END + 0x036E, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_EXPERTISE                          = EUnitFields.UNIT_END + 0x036F, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_OFFHAND_EXPERTISE                  = EUnitFields.UNIT_END + 0x0370, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_CRIT_PERCENTAGE                    = EUnitFields.UNIT_END + 0x0371, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_RANGED_CRIT_PERCENTAGE             = EUnitFields.UNIT_END + 0x0372, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_OFFHAND_CRIT_PERCENTAGE            = EUnitFields.UNIT_END + 0x0373, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_SPELL_CRIT_PERCENTAGE1             = EUnitFields.UNIT_END + 0x0374, -- Size: 7, Type: FLOAT, Flags: PRIVATE
    PLAYER_SHIELD_BLOCK                       = EUnitFields.UNIT_END + 0x037B, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_SHIELD_BLOCK_CRIT_PERCENTAGE       = EUnitFields.UNIT_END + 0x037C, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_EXPLORED_ZONES_1                   = EUnitFields.UNIT_END + 0x037D, -- Size: 128, Type: BYTES, Flags: PRIVATE
    PLAYER_REST_STATE_EXPERIENCE              = EUnitFields.UNIT_END + 0x03FD, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_COINAGE                      = EUnitFields.UNIT_END + 0x03FE, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_MOD_DAMAGE_DONE_POS          = EUnitFields.UNIT_END + 0x03FF, -- Size: 7, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_MOD_DAMAGE_DONE_NEG          = EUnitFields.UNIT_END + 0x0406, -- Size: 7, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_MOD_DAMAGE_DONE_PCT          = EUnitFields.UNIT_END + 0x040D, -- Size: 7, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_MOD_HEALING_DONE_POS         = EUnitFields.UNIT_END + 0x0414, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_MOD_HEALING_PCT              = EUnitFields.UNIT_END + 0x0415, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_FIELD_MOD_HEALING_DONE_PCT         = EUnitFields.UNIT_END + 0x0416, -- Size: 1, Type: FLOAT, Flags: PRIVATE
    PLAYER_FIELD_MOD_TARGET_RESISTANCE        = EUnitFields.UNIT_END + 0x0417, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_MOD_TARGET_PHYSICAL_RESISTANCE = EUnitFields.UNIT_END + 0x0418, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_BYTES                        = EUnitFields.UNIT_END + 0x0419, -- Size: 1, Type: BYTES, Flags: PRIVATE
    PLAYER_AMMO_ID                            = EUnitFields.UNIT_END + 0x041A, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_SELF_RES_SPELL                     = EUnitFields.UNIT_END + 0x041B, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_PVP_MEDALS                   = EUnitFields.UNIT_END + 0x041C, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_BUYBACK_PRICE_1              = EUnitFields.UNIT_END + 0x041D, -- Size: 12, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_BUYBACK_TIMESTAMP_1          = EUnitFields.UNIT_END + 0x0429, -- Size: 12, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_KILLS                        = EUnitFields.UNIT_END + 0x0435, -- Size: 1, Type: TWO_SHORT, Flags: PRIVATE
    PLAYER_FIELD_TODAY_CONTRIBUTION           = EUnitFields.UNIT_END + 0x0436, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_YESTERDAY_CONTRIBUTION       = EUnitFields.UNIT_END + 0x0437, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_LIFETIME_HONORABLE_KILLS     = EUnitFields.UNIT_END + 0x0438, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_BYTES2                       = EUnitFields.UNIT_END + 0x0439, -- Size: 1, Type: 6, Flags: PRIVATE
    PLAYER_FIELD_WATCHED_FACTION_INDEX        = EUnitFields.UNIT_END + 0x043A, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_COMBAT_RATING_1              = EUnitFields.UNIT_END + 0x043B, -- Size: 25, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_ARENA_TEAM_INFO_1_1          = EUnitFields.UNIT_END + 0x0454, -- Size: 21, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_HONOR_CURRENCY               = EUnitFields.UNIT_END + 0x0469, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_ARENA_CURRENCY               = EUnitFields.UNIT_END + 0x046A, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_MAX_LEVEL                    = EUnitFields.UNIT_END + 0x046B, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_DAILY_QUESTS_1               = EUnitFields.UNIT_END + 0x046C, -- Size: 25, Type: INT, Flags: PRIVATE
    PLAYER_RUNE_REGEN_1                       = EUnitFields.UNIT_END + 0x0485, -- Size: 4, Type: FLOAT, Flags: PRIVATE
    PLAYER_NO_REAGENT_COST_1                  = EUnitFields.UNIT_END + 0x0489, -- Size: 3, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_GLYPH_SLOTS_1                = EUnitFields.UNIT_END + 0x048C, -- Size: 6, Type: INT, Flags: PRIVATE
    PLAYER_FIELD_GLYPHS_1                     = EUnitFields.UNIT_END + 0x0492, -- Size: 6, Type: INT, Flags: PRIVATE
    PLAYER_GLYPHS_ENABLED                     = EUnitFields.UNIT_END + 0x0498, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_PET_SPELL_POWER                    = EUnitFields.UNIT_END + 0x0499, -- Size: 1, Type: INT, Flags: PRIVATE
    PLAYER_END                                = EUnitFields.UNIT_END + 0x049A, -- Size: 1, Type: INT, Flags: PRIVATE

}

EGameObjectFields = {
    OBJECT_FIELD_CREATED_BY                   = EObjectFields.OBJECT_END + 0x0000, -- Size: 2, Type: LONG, Flags: PUBLIC
    GAMEOBJECT_DISPLAYID                      = EObjectFields.OBJECT_END + 0x0002, -- Size: 1, Type: INT, Flags: PUBLIC
    GAMEOBJECT_FLAGS                          = EObjectFields.OBJECT_END + 0x0003, -- Size: 1, Type: INT, Flags: PUBLIC
    GAMEOBJECT_PARENTROTATION                 = EObjectFields.OBJECT_END + 0x0004, -- Size: 4, Type: FLOAT, Flags: PUBLIC
    GAMEOBJECT_DYNAMIC                        = EObjectFields.OBJECT_END + 0x0008, -- Size: 1, Type: TWO_SHORT, Flags: DYNAMIC
    GAMEOBJECT_FACTION                        = EObjectFields.OBJECT_END + 0x0009, -- Size: 1, Type: INT, Flags: PUBLIC
    GAMEOBJECT_LEVEL                          = EObjectFields.OBJECT_END + 0x000A, -- Size: 1, Type: INT, Flags: PUBLIC
    GAMEOBJECT_BYTES_1                        = EObjectFields.OBJECT_END + 0x000B, -- Size: 1, Type: BYTES, Flags: PUBLIC
    GAMEOBJECT_END                            = EObjectFields.OBJECT_END + 0x000C,
}

EDynamicObjectFields = {
    DYNAMICOBJECT_CASTER                      = EObjectFields.OBJECT_END + 0x0000, -- Size: 2, Type: LONG, Flags: PUBLIC
    DYNAMICOBJECT_BYTES                       = EObjectFields.OBJECT_END + 0x0002, -- Size: 1, Type: BYTES, Flags: PUBLIC
    DYNAMICOBJECT_SPELLID                     = EObjectFields.OBJECT_END + 0x0003, -- Size: 1, Type: INT, Flags: PUBLIC
    DYNAMICOBJECT_RADIUS                      = EObjectFields.OBJECT_END + 0x0004, -- Size: 1, Type: FLOAT, Flags: PUBLIC
    DYNAMICOBJECT_CASTTIME                    = EObjectFields.OBJECT_END + 0x0005, -- Size: 1, Type: INT, Flags: PUBLIC
    DYNAMICOBJECT_END                         = EObjectFields.OBJECT_END + 0x0006,
}

ECorpseFields = {
    CORPSE_FIELD_OWNER                        = EObjectFields.OBJECT_END + 0x0000, -- Size: 2, Type: LONG, Flags: PUBLIC
    CORPSE_FIELD_PARTY                        = EObjectFields.OBJECT_END + 0x0002, -- Size: 2, Type: LONG, Flags: PUBLIC
    CORPSE_FIELD_DISPLAY_ID                   = EObjectFields.OBJECT_END + 0x0004, -- Size: 1, Type: INT, Flags: PUBLIC
    CORPSE_FIELD_ITEM                         = EObjectFields.OBJECT_END + 0x0005, -- Size: 19, Type: INT, Flags: PUBLIC
    CORPSE_FIELD_BYTES_1                      = EObjectFields.OBJECT_END + 0x0018, -- Size: 1, Type: BYTES, Flags: PUBLIC
    CORPSE_FIELD_BYTES_2                      = EObjectFields.OBJECT_END + 0x0019, -- Size: 1, Type: BYTES, Flags: PUBLIC
    CORPSE_FIELD_GUILD                        = EObjectFields.OBJECT_END + 0x001A, -- Size: 1, Type: INT, Flags: PUBLIC
    CORPSE_FIELD_FLAGS                        = EObjectFields.OBJECT_END + 0x001B, -- Size: 1, Type: INT, Flags: PUBLIC
    CORPSE_FIELD_DYNAMIC_FLAGS                = EObjectFields.OBJECT_END + 0x001C, -- Size: 1, Type: INT, Flags: DYNAMIC
    CORPSE_FIELD_PAD                          = EObjectFields.OBJECT_END + 0x001D, -- Size: 1, Type: INT, Flags: NONE
    CORPSE_END                                = EObjectFields.OBJECT_END + 0x001E,
}


--[[ Custom  ]]--
Colors = {
    GREY = "|cff888888",
    WHITE = "|cffffffff",
    SUBWHITE = "|cffbbbbbb",
    MAGENTA = "|cffff00ff",
    YELLOW = "|cffffff00",
    CYAN = "|cff00ffff",
    LIGHTRED = "|cffff6060",
    LIGHTBLUE = "|cff00ccff",
    BLUE = "|cff0000ff",
    GREEN = "|cff00ff00",
    RED = "|cffff0000",
    GOLD = "|cffffcc00",
    ALICEBLUE = "|cFFF0F8FF",
    ANTIQUEWHITE = "|cFFFAEBD7",
    AQUA = "|cFF00FFFF",
    AQUAMARINE = "|cFF7FFFD4",
    AZURE = "|cFFF0FFFF",
    BEIGE = "|cFFF5F5DC",
    BISQUE = "|cFFFFE4C4",
    BLACK = "|cFF000000",
    BLANCHEDALMOND = "|cFFFFEBCD",
    BLUEVIOLET = "|cFF8A2BE2",
    BROWN = "|cFFA52A2A",
    BURLYWOOD = "|cFFDEB887",
    CADETBLUE = "|cFF5F9EA0",
    CHARTREUSE = "|cFF7FFF00",
    CHOCOLATE = "|cFFD2691E",
    CORAL = "|cFFFF7F50",
    CORNFLOWERBLUE = "|cFF6495ED",
    CORNSILK = "|cFFFFF8DC",
    CRIMSON = "|cFFDC143C",
    DARKBLUE = "|cFF00008B",
    DARKCYAN = "|cFF008B8B",
    DARKGOLDENROD = "|cFFB8860B",
    DARKGRAY = "|cFFA9A9A9",
    DARKGREEN = "|cFF006400",
    DARKKHAKI = "|cFFBDB76B",
    DARKMAGENTA = "|cFF8B008B",
    DARKOLIVEGREEN = "|cFF556B2F",
    DARKORANGE = "|cFFFF8C00",
    DARKORCHID = "|cFF9932CC",
    DARKRED = "|cFF8B0000",
    DARKSALMON = "|cFFE9967A",
    DARKSEAGREEN = "|cFF8FBC8B",
    DARKSLATEBLUE = "|cFF483D8B",
    DARKSLATEGRAY = "|cFF2F4F4F",
    DARKTURQUOISE = "|cFF00CED1",
    DARKVIOLET = "|cFF9400D3",
    DEEPPINK = "|cFFFF1493",
    DEEPSKYBLUE = "|cFF00BFFF",
    DIMGRAY = "|cFF696969",
    DODGERBLUE = "|cFF1E90FF",
    FIREBRICK = "|cFFB22222",
    FLORALWHITE = "|cFFFFFAF0",
    FORESTGREEN = "|cFF228B22",
    FUCHSIA = "|cFFFF00FF",
    GAINSBORO = "|cFFDCDCDC",
    GHOSTWHITE = "|cFFF8F8FF",
    GOLDENROD = "|cFFDAA520",
    GRAY = "|cFF808080",
    GREENYELLOW = "|cFFADFF2F",
    HONEYDEW = "|cFFF0FFF0",
    HOTPINK = "|cFFFF69B4",
    INDIANRED = "|cFFCD5C5C",
    INDIGO = "|cFF4B0082",
    IVORY = "|cFFFFFFF0",
    KHAKI = "|cFFF0E68C",
    LAVENDER = "|cFFE6E6FA",
    LAVENDERBLUSH = "|cFFFFF0F5",
    LAWNGREEN = "|cFF7CFC00",
    LEMONCHIFFON = "|cFFFFFACD",
    LIGHTCORAL = "|cFFF08080",
    LIGHTCYAN = "|cFFE0FFFF",
    LIGHTGRAY = "|cFFD3D3D3",
    LIGHTGREEN = "|cFF90EE90",
    LIGHTPINK = "|cFFFFB6C1",
    LIGHTSALMON = "|cFFFFA07A",
    LIGHTSEAGREEN = "|cFF20B2AA",
    LIGHTSKYBLUE = "|cFF87CEFA",
    LIGHTSLATEGRAY = "|cFF778899",
    LIGHTSTEELBLUE = "|cFFB0C4DE",
    LIGHTYELLOW = "|cFFFFFFE0",
    LIME = "|cFF00FF00",
    LIMEGREEN = "|cFF32CD32",
    LINEN = "|cFFFAF0E6",
    MAROON = "|cFF800000",
    MEDIUMAQUAMARINE = "|cFF66CDAA",
    MEDIUMBLUE = "|cFF0000CD",
    MEDIUMORCHID = "|cFFBA55D3",
    MEDIUMPURPLE = "|cFF9370DB",
    MEDIUMSEAGREEN = "|cFF3CB371",
    MEDIUMSLATEBLUE = "|cFF7B68EE",
    MEDIUMSPRINGGREEN = "|cFF00FA9A",
    MEDIUMTURQUOISE = "|cFF48D1CC",
    MEDIUMVIOLETRED = "|cFFC71585",
    MIDNIGHTBLUE = "|cFF191970",
    MINTCREAM = "|cFFF5FFFA",
    MISTYROSE = "|cFFFFE4E1",
    MOCCASIN = "|cFFFFE4B5",
    NAVAJOWHITE = "|cFFFFDEAD",
    NAVY = "|cFF000080",
    OLDLACE = "|cFFFDF5E6",
    OLIVE = "|cFF808000",
    OLIVEDRAB = "|cFF6B8E23",
    ORANGE = "|cFFFFA500",
    ORANGERED = "|cFFFF4500",
    ORCHID = "|cFFDA70D6",
    PALEGOLDENROD = "|cFFEEE8AA",
    PALEGREEN = "|cFF98FB98",
    PALETURQUOISE = "|cFFAFEEEE",
    PALEVIOLETRED = "|cFFDB7093",
    PAPAYAWHIP = "|cFFFFEFD5",
    PEACHPUFF = "|cFFFFDAB9",
    PERU = "|cFFCD853F",
    PINK = "|cFFFFC0CB",
    PLUM = "|cFFDDA0DD",
    POWDERBLUE = "|cFFB0E0E6",
    PURPLE = "|cFF800080",
    ROSYBROWN = "|cFFBC8F8F",
    ROYALBLUE = "|cFF4169E1",
    SADDLEBROWN = "|cFF8B4513",
    SALMON = "|cFFFA8072",
    SANDYBROWN = "|cFFF4A460",
    SEAGREEN = "|cFF2E8B57",
    SEASHELL = "|cFFFFF5EE",
    SIENNA = "|cFFA0522D",
    SILVER = "|cFFC0C0C0",
    SKYBLUE = "|cFF87CEEB",
    SLATEBLUE = "|cFF6A5ACD",
    SLATEGRAY = "|cFF708090",
    SNOW = "|cFFFFFAFA",
    SPRINGGREEN = "|cFF00FF7F",
    STEELBLUE = "|cFF4682B4",
    TAN = "|cFFD2B48C",
    TEAL = "|cFF008080",
    THISTLE = "|cFFD8BFD8",
    TOMATO = "|cFFFF6347",
    TRANSPARENT = "|c00FFFFFF",
    TURQUOISE = "|cFF40E0D0",
    VIOLET = "|cFFEE82EE",
    WHEAT = "|cFFF5DEB3",
    WHITESMOKE = "|cFFF5F5F5",
    YELLOWGREEN = "|cFF9ACD32",

    COLOR_END = "|r"
}

local enabled = true;

local enableDebug = true;


return 
{
	-- Event tables/enums.
    BGEvents = BGEvents,
    CreatureEvents = CreatureEvents,
    GameObjectEvents = GameObjectEvents,
    GroupEvents = GroupEvents,
    GuildEvents = GuildEvents,
    InstanceEvents = InstanceEvents,
    ItemEvents = ItemEvents,
    GossipEvents = GossipEvents,
    PacketEvents = PacketEvents,
    PlayerEvents = PlayerEvents,
    ServerEvents = ServerEvents,

    -- UpdateFields tables/enums.
    EObjectFields = EObjectFields;
    EItemFields = EItemFields,
    EContainerFields = EContainerFields,
    EUnitFields = EUnitFields,
    EPlayerFields = EPlayerFields,
    EGameObjectFields = EGameObjectFields,
    EDynamicObjectFields = EDynamicObjectFields,
    ECorpseFields = ECorpseFields,


    -- Custom tables/enums.
    Colors = Colors,

	-- Booleans
	enableDebug = enableDebug,
	enabled = enabled
 }

