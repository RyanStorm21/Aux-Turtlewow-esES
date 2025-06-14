module 'aux.core.slash'

local T = require 'T'
local aux = require 'aux'
local info = require 'aux.util.info'
local post = require 'aux.tabs.post'

function status(enabled)
	return (enabled and aux.color.green'activado' or aux.color.red'desactivado')
end

_G.SLASH_AUX1 = '/aux'
function SlashCmdList.AUX(command)
	if not command then return end
	local arguments = aux.tokenize(command)
    local tooltip_settings = aux.character_data.tooltip
    if arguments[1] == 'scale' and tonumber(arguments[2]) then
    	local scale = tonumber(arguments[2])
	    aux.frame:SetScale(scale)
	    aux.account_data.scale = scale
    elseif arguments[1] == 'ignore' and arguments[2] == 'owner' then
	    aux.account_data.ignore_owner = not aux.account_data.ignore_owner
        aux.print('ignorar propietario ' .. status(aux.account_data.ignore_owner))
	elseif arguments[1] == 'post' and arguments[2] == 'stack' then
        aux.account_data.post_stack = not aux.account_data.post_stack
	    aux.print('publicar en montón ' .. status(aux.account_data.post_stack))
    elseif arguments[1] == 'post' and arguments[2] == 'bid' then
        aux.account_data.post_bid = not aux.account_data.post_bid
	    aux.print('publicar puja ' .. status(aux.account_data.post_bid))
    elseif arguments[1] == 'post' and arguments[2] == 'duration' and  T.map('6', post.DURATION_2, '24', post.DURATION_8, '72', post.DURATION_24)[arguments[3]] then
        aux.account_data.post_duration = T.map('6', post.DURATION_2, '24', post.DURATION_8, '72', post.DURATION_24)[arguments[3]]
        aux.print('duración de publicación ' .. aux.color.blue(aux.account_data.post_duration / 60 * 3 .. 'h'))
    elseif arguments[1] == 'crafting' and arguments[2] == 'cost' then
		aux.account_data.crafting_cost = not aux.account_data.crafting_cost
		aux.print('costo de creación ' .. status(aux.account_data.crafting_cost))
    elseif arguments[1] == 'tooltip' and arguments[2] == 'value' then
	    tooltip_settings.value = not tooltip_settings.value
        aux.print('valor en tooltip ' .. status(tooltip_settings.value))
    elseif arguments[1] == 'tooltip' and arguments[2] == 'daily' then
	    tooltip_settings.daily = not tooltip_settings.daily
        aux.print('diario en tooltip ' .. status(tooltip_settings.daily))
    elseif arguments[1] == 'tooltip' and arguments[2] == 'merchant' and arguments[3] == 'buy' then
	    tooltip_settings.merchant_buy = not tooltip_settings.merchant_buy
        aux.print('compra de mercader en tooltip ' .. status(tooltip_settings.merchant_buy))
    elseif arguments[1] == 'tooltip' and arguments[2] == 'merchant' and arguments[3] == 'sell' then
	    tooltip_settings.merchant_sell = not tooltip_settings.merchant_sell
        aux.print('venta de mercader en tooltip ' .. status(tooltip_settings.merchant_sell))
    elseif arguments[1] == 'tooltip' and arguments[2] == 'disenchant' and arguments[3] == 'value' then
	    tooltip_settings.disenchant_value = not tooltip_settings.disenchant_value
        aux.print('valor de desencantar en tooltip ' .. status(tooltip_settings.disenchant_value))
    elseif arguments[1] == 'tooltip' and arguments[2] == 'disenchant' and arguments[3] == 'distribution' then
	    tooltip_settings.disenchant_distribution = not tooltip_settings.disenchant_distribution
        aux.print('distribución de desencantar en tooltip ' .. status(tooltip_settings.disenchant_distribution))
    elseif arguments[1] == 'clear' and arguments[2] == 'item' and arguments[3] == 'cache' then
	    aux.account_data.items = {}
        aux.account_data.item_ids = {}
        aux.account_data.auctionable_items = {}
        aux.print('Caché de objetos borrada.')
    elseif arguments[1] == 'populate' and arguments[2] == 'wdb' then
	    info.populate_wdb()
	elseif arguments[1] == 'sharing' then
		aux.account_data.sharing = not aux.account_data.sharing
		aux.print('compartir datos ' .. status(aux.account_data.sharing))
	elseif arguments[1] == 'show' and arguments[2] == 'hidden' then
		aux.account_data.showhidden = not aux.account_data.showhidden
		aux.print('mostrar ocultos ' .. status(aux.account_data.showhidden))
	else
		aux.print('Uso:')
		aux.print('- scale [' .. aux.color.blue(aux.account_data.scale) .. ']')
		aux.print('- ignore owner [' .. status(aux.account_data.ignore_owner) .. '] (ignorar propietario)')
		aux.print('- post bid [' .. status(aux.account_data.post_bid) .. '] (publicar puja)')
        aux.print('- post duration [' .. aux.color.blue(aux.account_data.post_duration / 60 * 3 .. 'h') .. '] (duración de publicación)')
		aux.print('- post stack [' .. status(aux.account_data.post_stack) .. '] (publicar en montón)')
        aux.print('- crafting cost [' .. status(aux.account_data.crafting_cost) .. '] (costo de creación)')
		aux.print('- tooltip value [' .. status(tooltip_settings.value) .. '] (valor en tooltip)')
		aux.print('- tooltip daily [' .. status(tooltip_settings.daily) .. '] (diario en tooltip)')
		aux.print('- tooltip merchant buy [' .. status(tooltip_settings.merchant_buy) .. '] (compra de mercader en tooltip)')
		aux.print('- tooltip merchant sell [' .. status(tooltip_settings.merchant_sell) .. '] (venta de mercader en tooltip)')
		aux.print('- tooltip disenchant value [' .. status(tooltip_settings.disenchant_value) .. '] (valor de desencantar en tooltip)')
		aux.print('- tooltip disenchant distribution [' .. status(tooltip_settings.disenchant_distribution) .. '] (distribución de desencantar en tooltip)')
		aux.print('- clear item cache (borrar caché de objetos)')
		aux.print('- populate wdb (poblar wdb)')
		aux.print('- sharing [' .. status(aux.account_data.sharing) .. '] (compartir datos)')
		aux.print('- show hidden [' .. status(aux.account_data.showhidden) .. '] (mostrar ocultos)')
    end
end