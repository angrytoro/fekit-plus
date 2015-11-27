module.exports = () ->
	return (req, res, next) -> 
		if /.*\.(ttf|eot|woff|svg)$/.test req._parsedUrl.pathname
			res.setHeader 'Access-Control-Allow-Origin', '*'
		next()