
Apps That Don't Suck
===

A static website generated with Jekyll that contains a comprehensive list of useful programs and websites.

---

Adding New Programs/Websites
---

The `_data/sections` folder contains all the programs/websites in JSON format, first split into two folders named `programs` and `websites`, then split into separate JSON files representing each category.

Categories may also be split into sub-categories. For example, *Console Emulation* is a category, but the different types of consoles are put into sub-categories.

A Category should follow the below pattern:
```json
{
	"category": "<category name>",
	"groups": [
		{
			"group": "<sub-category name>",
			"items": [
				{
					"name": "<program/website name>",
					"url": "<program/website link>"
				}
			]
		}
	]
}
```

As you can see, there can be multiple sub-categories per category and multiple items per sub-category.

If the category shouldn't have sub-categories, have only one sub-category and set the `group` property blank:
```json
{
	"category": "<category name>",
	"groups": [
		{
			"group": "",
			"items": [
				{
					"name": "<program/website name>",
					"url": "<program/website link>"
				}
			]
		}
	]
}
```

Contributing
---

If you have contributed to this project, feel free to add your own name to the list of contributors. This list can be found in `_data/contributors.md`. This list will automatically be rendered on the website.
