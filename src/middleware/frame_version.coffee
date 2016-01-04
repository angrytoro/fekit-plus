module.exports = () ->
	return (req, res, next) ->
		req.url = req.url.replace(/(.+\/)(\d+(\.\d+)*\/)(prd\/)(.*)/, () => return arguments[1]+arguments[4]+arguments[5])
		next()