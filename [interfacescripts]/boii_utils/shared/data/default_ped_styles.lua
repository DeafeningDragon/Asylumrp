--- This section stores default styles for male and female peds
-- Default values are setup for boii_base build however you can easily adjust
-- Usage of this section is covered within the creation functions.
-- @see client/characters/creation.lua

--- Table to store ped style values
--- @field ped_styles: Stores clothing and feature values for player ped.
local ped_styles = { 
    m = { 
        genetics = { 
            mother = 0,
            father = 0,
            resemblance = 0,
            skin = 0,
            eye_colour = 1,
            eye_opening = 0,
            eyebrow_height = 0,
            eyebrow_depth = 0,
            nose_width = 0,
            nose_peak_height = 0,
            nose_peak_length = 0,
            nose_bone_height = 0,
            nose_peak_lower = 0,
            nose_twist = 0,
            cheek_bone = 0,
            cheek_bone_sideways = 0,
            cheek_bone_width = 0,
            lip_thickness = 0,
            jaw_bone_width = 0,
            jaw_bone_shape = 0,
            chin_bone = 0,
            chin_bone_length = 0,
            chin_bone_shape = 0,
            chin_hole = 0,
            neck_thickness = 0,
        },
        barber = { 
            hair = -1,
            hair_colour = 0,
            highlight_colour = 0,
            fade = -1,
            fade_colour = 0,
            eyebrow = -1,
            eyebrow_opacity = 1.0,
            eyebrow_colour = 0,
            facial_hair = -1,
            facial_hair_opacity = 1.0,
            facial_hair_colour = 0,
            chest_hair = -1,
            chest_hair_opacity = 1.0,
            chest_hair_colour = 0,
            make_up = -1,
            make_up_opacity = 1.0,
            make_up_colour = 0,
            blush = -1,
            blush_opacity = 1.0,
            blush_colour = 0,
            lipstick = -1,
            lipstick_opacity = 1.0,
            lipstick_colour = 0,
            blemish = -1,
            blemish_opacity = 1.0,
            body_blemish = -1,
            body_blemish_opacity = 1.0,
            ageing = -1,
            ageing_opacity = 1.0,
            complexion = -1,
            complexion_opacity = 1.0,
            sun_damage = -1,
            sun_damage_opacity = 1.0,
            moles = -1,
            moles_opacity = 0
        },
        clothing = { 
            mask_style = -1,
            mask_texture = 0,
            jacket_style = 15,
            jacket_texture = 0,
            shirt_style = 15,
            shirt_texture = 0,
            vest_style = -1,
            vest_texture = 0,
            legs_style = 21,
            legs_texture = 0,
            shoes_style = 34,
            shoes_texture = 0,
            hands_style = 15,
            hands_texture = 0,
            bag_style = -1,
            bag_texture = 0,
            decals_style = -1,
            decals_texture = 0,
            hats_style = -1,
            hats_texture = 0,
            glasses_style = -1,
            glasses_texture = 0,
            earwear_style = -1,
            earwear_texture = 0,
            watches_style = -1,
            watches_texture = 0,
            bracelets_style = -1,
            bracelets_texture = 0,
            neck_style = -1,
            neck_texture = 0
        },
        tattoos = { 
            ZONE_HEAD = { name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_TORSO = { name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_LEFT_ARM = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_RIGHT_ARM = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_LEFT_LEG = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_RIGHT_LEG = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' }
        }
    },
    f = { 
        genetics = { 
            mother = 0,
            father = 0,
            resemblence = 0,
            skin = 0,
            eye_colour = 1,
            eye_opening = 0,
            eyebrow_height = 0,
            eyebrow_depth = 0,
            nose_width = 0,
            nose_peak_height = 0,
            nose_peak_length = 0,
            nose_bone_height = 0,
            nose_peak_lower = 0,
            nose_twist = 0,
            cheek_bone = 0,
            cheek_bone_sideways = 0,
            cheek_bone_width = 0,
            lip_thickness = 0,
            jaw_bone_width = 0,
            jaw_bone_shape = 0,
            chin_bone = 0,
            chin_bone_length = 0,
            chin_bone_shape = 0,
            chin_hole = 0,
            neck_thickness = 0,
        },
        barber = { 
            hair = -1,
            hair_colour = 0,
            highlight_colour = 0,
            fade = -1,
            fade_colour = 0,
            eyebrow = -1,
            eyebrow_opacity = 1.0,
            eyebrow_colour = 0,
            facial_hair = -1,
            facial_hair_opacity = 1.0,
            facial_hair_colour = 0,
            chest_hair = -1,
            chest_hair_opacity = 1.0,
            chest_hair_colour = 0,
            make_up = -1,
            make_up_opacity = 1.0,
            make_up_colour = 0,
            blush = -1,
            blush_opacity = 1.0,
            blush_colour = 0,
            lipstick = -1,
            lipstick_opacity = 1.0,
            lipstick_colour = 0,
            blemish = -1,
            blemish_opacity = 1.0,
            body_blemish = -1,
            body_blemish_opacity = 1.0,
            ageing = -1,
            ageing_opacity = 1.0,
            complexion = -1,
            complexion_opacity = 1.0,
            sun_damage = -1,
            sun_damage_opacity = 1.0,
            moles = -1,
            moles_opacity = 0
        },
        clothing = { 
            mask_style = -1,
            mask_texture = 0,
            jacket_style = -1,
            jacket_texture = 0,
            shirt_style = 10,
            shirt_texture = -1,
            vest_style = -1,
            vest_texture = 0,
            legs_style = 15,
            legs_texture = 0,
            shoes_style = 5,
            shoes_texture = 0,
            hands_style = 15,
            hands_texture = 0,
            bag_style = -1,
            bag_texture = 0,
            decals_style = -1,
            decals_texture = 0,
            hats_style = -1,
            hats_texture = 0,
            glasses_style = -1,
            glasses_texture = 0,
            earwear_style = -1,
            earwear_texture = 0,
            watches_style = -1,
            watches_texture = 0,
            bracelets_style = -1,
            bracelets_texture = 0,
            neck_style = -1,
            neck_texture = 0
        },
        tattoos = { 
            ZONE_HEAD = { name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_TORSO = { name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_LEFT_ARM = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_RIGHT_ARM = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_LEFT_LEG = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' },
            ZONE_RIGHT_LEG = {  name = '', label = '', hash_m = '', hash_f = '', collection = '' }
        }
    }
}

exports('shared_style', ped_styles)
utils.shared.style = ped_styles

--- Store default ped styles.
local defaults = utils.tables.deep_copy(ped_styles)

--- @section Local functions

--- Returns default styles.
local function get_style_defaults()
    return defaults
end

exports('shared_get_style_defaults', get_style_defaults)
utils.shared.get_style_defaults = get_style_defaults

--- Retreives updated style data.
--- @param sex: Sex of ped to retrieve correct style.
local function get_style(sex)
    if not sex then return false end
    return ped_styles[sex]
end

exports('shared_get_style', get_style)
utils.shared.get_style = get_style

--- Reset styles to defaults.
local function reset_styles()
    print('resetting styles to defaults')
    ped_styles = utils.tables.deep_copy(defaults)
    utils.shared.style = ped_styles
end


exports('shared_reset_styles', reset_styles)
utils.shared.reset_styles = reset_styles
