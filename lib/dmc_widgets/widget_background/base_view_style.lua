--====================================================================--
-- dmc_widgets/widget_background/base_view_style.lua
--
-- Documentation: http://docs.davidmccuskey.com/
--====================================================================--

--[[

The MIT License (MIT)

Copyright (c) 2015 David McCuskey

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

--]]



--====================================================================--
--== DMC Corona Widgets : Base View Style
--====================================================================--


-- Semantic Versioning Specification: http://semver.org/

local VERSION = "0.1.0"



--====================================================================--
--== DMC Widgets Setup
--====================================================================--


local dmc_widget_data = _G.__dmc_widget
local dmc_widget_func = dmc_widget_data.func
local widget_find = dmc_widget_func.find



--====================================================================--
--== DMC Widgets :
--====================================================================--



--====================================================================--
--== Imports


local Objects = require 'dmc_objects'
local Utils = require 'dmc_utils'

local BaseStyle = require( widget_find( 'widget_style.base_style' ) )



--====================================================================--
--== Setup, Constants


local newClass = Objects.newClass



--====================================================================--
--== Rectangle Background Style Class
--====================================================================--


local ViewStyle = newClass( BaseStyle, {name="Base View Style"} )

--== Class Constants

ViewStyle.TYPE = nil


--== Event Constants

ViewStyle.EVENT = 'view-style-event'

-- from super
-- Class.STYLE_UPDATED


--======================================================--
-- Start: Setup DMC Objects



-- END: Setup DMC Objects
--======================================================--



--====================================================================--
--== Static Methods



--====================================================================--
--== Public Methods


function ViewStyle:copyProperties( src, params )
	-- print( "ViewStyle:copyProperties", src, self )
	params = params or {}
	if params.force==nil then params.force=false end
	--==--
	local StyleClass = self.class
	local BaseStyle = self:getBaseStyle()

	local isTable, isObj, isValid = false, false, false
	isTable = ( type(src)=='table' )
	isObj = ( isTable and type(src.isa)=='function' )
	isValid = ( isObj and src:isa(StyleClass) )

	if isTable and not isObject then
		-- we have a plain table, ok
		-- pass
	elseif isValid then
		-- have instance of our view, ok
		-- pass
	else
		src = BaseStyle
	end

	StyleClass.copyExistingSrcProperties( self, src, params )

end


--======================================================--
-- Access to style properties

--== type

function ViewStyle.__getters:type()
	-- print( "ViewStyle.__getters:type" )
	return self.TYPE
end




--====================================================================--
--== Private Methods


function ViewStyle:_clearProperties( src )
	-- print( "ViewStyle:_clearProperties", src, self )
	local StyleClass = self.class
	local inherit = self._inherit
	local p = {force=true}

	if src and type(src.isa=='function') and src:isa(StyleClass) then
		p.force=false
	elseif inherit and inherit:isa(StyleClass) then
		-- if inherit, then use empty to clear all properties
		src = {}
		p.force=true
	else
		src=nil
	end
	self:copyProperties( src, p )
end



--====================================================================--
--== Event Handlers


-- none



return ViewStyle
