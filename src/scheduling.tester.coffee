# Export Plugin Tester
module.exports = (testers) ->
	# Define My Tester
	class MyTester extends testers.RendererTester

		docpadConfig:
			logLevel: 5

			plugins:
				scheduling:
					devScheduling: true
