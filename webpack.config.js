module.exports = {
     entry: './public/main.coffee',
     output: {
         path: './public',
         filename: 'app.bundle.js'
     },
     module: {
		loaders: [
			{ test: /\.coffee$/, loader: "coffee", exclude:/node_modules/ }
		]
	}
 };
