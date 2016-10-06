/**
 * Created by Lance on 10/1/2016.
 */
module.exports = {
	entry: './js/index.js',
	output: {
		path: './bin',
		filename: 'ctm.bundle.js'
	},
	module: {
		loaders: [{
			test: /\.js$/,
			exclude: /node_modules/,
			loader: 'babel-loader'
		}]
	}
};