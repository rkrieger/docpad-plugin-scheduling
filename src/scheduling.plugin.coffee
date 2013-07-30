# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class Scheduling extends BasePlugin
		# Plugin name
		name: 'scheduling'

		config:

			defaultScheduling: true

			devScheduling: false

		# Render
		# Called per document, for each extension conversion. Used to render one extension to another.
		parseAfter: (opts, next) ->

			docpad = @docpad
			config = @config
			env = docpad.getEnvironment()
			database = docpad.getDatabase()
			collection = opts.collection
			scheduledFiles = []

			if env is "development" and not config.devScheduling
				return next()

			collection.forEach (file) ->

				# Get required data
				fileScheduled = file.get('scheduled')
				fileDate = file.get('date')
				now = new Date()
				filePath = file.getFilePath()

				# Scheduled?
				if ((config.defaultScheduling and not fileScheduled?) or (fileScheduled? and fileScheduled)) and fileDate > now
					docpad.log 'info', "Ignoring scheduled file: #{filePath}"
					scheduledFiles.push file

			for file in scheduledFiles then do (file) ->
				collection.remove(file)
				database.remove(file)

			return next()
