module Jekyll
	module Tags
		class IncludeAbsoluteTag < IncludeRelativeTag
			def tag_includes_dir(context)
				context.registers[:site].config['source'].freeze
			end
		end
	end
end

Liquid::Template.register_tag('include_absolute', Jekyll::Tags::IncludeAbsoluteTag)
