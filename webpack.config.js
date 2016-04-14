'use strict';

module.exports = {
	entry: './test/sort.coffee',
	resolve: {
		modulesDirectories: ['node_modules'],
		extensions:         ['', '.js', '.coffee']
	},
	module: {
		loaders: [
			{
				test: /\.coffee$/,
				loader: 'coffee',
				exclude: /node_modules/
			}
		],
	}
};
