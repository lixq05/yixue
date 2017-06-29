function BacUtil() {
	var bacAfterReadyList = new Array();
	var bacBeforeReadyList = new Array();
	BacUtil._initialized;
	if (!BacUtil._initialized) {
		BacUtil.prototype.bacGetXmlHttpObject = function() {
			var xmlHttp = null;
			try {
				xmlHttp = new XMLHttpRequest();
			} catch (e) {
				try {
					xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
				} catch (e) {
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
			}
			return xmlHttp;
		}
		BacUtil.prototype.ajax = function(url, param, success, failure, method,
				async) {
			var request = this.bacGetXmlHttpObject();
			request.onreadystatechange = function() {
				if (request.readyState == 4) {
					if (request.status == 200) {
						success(request.responseText);
					} else {
						failure(request.status, request.responseText);
					}
				}
			}
			if (method != null) {
				method = method.toUpperCase();
				if (method != "POST" && method != "GET") {
					alert("Only [POST] or [GET]");
					return;
				}
			} else {
				method = "POST";
			}
			if (!async && async == false) {
				request.open(method, url, false);
			} else {
				request.open(method, url, true);
			}
			if (method == "POST") {
				request.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded");
				request.send(param);
			} else {
				request.send(null);
			}
		}
		BacUtil.prototype.postajax = function(url, param, success, failure,
				async) {
			this.ajax(url, param, success, failure, "POST", async);
		}
		BacUtil.prototype.getajax = function(url, success, failure, async) {
			this.ajax(url, null, success, failure, "GET", async);
		}
		BacUtil.prototype.bacCaptureDocumentReadyStateChange = function() {
			if (document.readyState == "complete") {
				var wait;
				for ( var i = 0; i < bacBeforeReadyList.length; i++) {
					wait = bacBeforeReadyList[i];
					wait.fun();
				}
				if (window.onload) {
					window.onload();
				}
				for ( var i = 0; i < bacAfterReadyList.length; i++) {
					wait = bacAfterReadyList[i];
					wait.fun();
				}
				window.onload = null;
			}
		}
		BacUtil.prototype.ready = function(success, after) {
			var wait = {};
			wait.fun = success;
			wait.after = after;
			if (after) {
				bacAfterReadyList[bacAfterReadyList.length] = wait;
			} else {
				bacBeforeReadyList[bacBeforeReadyList.length] = wait;
			}
			if (!document.onreadystatechange) {
				document.onreadystatechange = this.bacCaptureDocumentReadyStateChange;
			}
		}
		BacUtil.prototype.importjs = function(js) {
			document.write("<script type='text/javascript' src='" + js
					+ "'></script>");
		}
		BacUtil.prototype.importcss = function(css) {
			document.write("<link rel='stylesheet' href='" + css
					+ "' type='text/css'/>");
		}
		BacUtil.prototype.decode = function(str, fun) {
			try {
				return eval('(' + str + ')');
			} catch (msg) {
				if (fun) {
					fun(msg, str)
				}
			}
		}
		BacUtil.prototype.encode = function(obj) {
			var sA = [];
			(function(o) {
				var isObj = true;
				if (o instanceof Array)
					isObj = false;
				else if (typeof o != 'object') {
					if (typeof o == 'string')
						sA.push('"' + o + '"');
					else
						sA.push(o);
					return;
				}
				sA.push(isObj ? "{" : "[");
				for ( var i in o) {
					if (o.hasOwnProperty(i) && i != 'prototype') {
						if (isObj)
							sA.push(i + ':');
						arguments.callee(o[i]);
						sA.push(',');
					}
				}
				sA.push(isObj ? "}" : "]");
			})(obj);
			return sA.slice(0).join('').replace(/,\}/g, '}').replace(/,\]/g,
					']');
		}
		BacUtil.prototype.setCookie = function(c_name, value, expiredays) {
			var exdate = new Date()
			exdate.setDate(exdate.getDate() + expiredays)
			document.cookie = c_name
					+ "="
					+ escape(value)
					+ ((expiredays == null) ? "" : ";expires="
							+ exdate.toGMTString())
		}
		BacUtil.prototype.getCookie = function(c_name) {
			if (document.cookie.length > 0) {
				c_start = document.cookie.indexOf(c_name + "=")
				if (c_start != -1) {
					c_start = c_start + c_name.length + 1
					c_end = document.cookie.indexOf(";", c_start)
					if (c_end == -1)
						c_end = document.cookie.length
					return unescape(document.cookie.substring(c_start, c_end))
				}
			}
			return ""
		}
		BacUtil.prototype.get = function(id) {
			return document.getElementById(id);
		}
		BacUtil.prototype.getXy = function(tmp) {
			var p = new Object();
			p.x = 0;
			p.y = 0;
			while (tmp != null && tmp.offsetParent != null) {
				p.x += tmp.offsetLeft - tmp.offsetParent.scrollLeft;
				p.y += tmp.offsetTop - tmp.offsetParent.scrollTop;
				var nstyle = tmp.offsetParent.currentStyle ? tmp.offsetParent.currentStyle
						: window.getComputedStyle(tmp, null);
				var borderTop = nstyle.borderTopWidth;
				if (borderTop == "medium") {
					borderTop = 5;
				} else if (borderTop == "thin") {
					borderTop = 2;
				} else if (borderTop == "medium") {
					borderTop = 5;
				} else {
					borderTop = parseInt(BacUtil.prototype.removePx(borderTop));
				}
				if (!isNaN(borderTop)) {
					p.y += borderTop;
				}
				tmp = tmp.offsetParent;
			}
			return p;
		}
		BacUtil.prototype.removePx = function(px) {
			if (px != null) {
				if (typeof px == "string") {
					return px.replace(/px/, "");
				}
			}
		}
		BacUtil.prototype.loadjs = function(url, callback) {
			var done = false;
			var script = document.createElement('script');
			script.type = 'text/javascript';
			script.language = 'javascript';
			script.src = url;
			script.onload = script.onreadystatechange = function() {
				if (!done
						&& (!script.readyState || script.readyState == 'loaded' || script.readyState == 'complete')) {
					done = true;
					script.onload = script.onreadystatechange = null;
					if (callback) {
						callback.call(script);
					}
				}
			}
			document.getElementsByTagName("head")[0].appendChild(script);
		}
		BacUtil.prototype.trim = function(str) {
			return str.replace(/(^\s*)(\s*$)/g, '');
		}
		BacUtil.prototype.toast=function(str,success){
			alert(str);
		}
		BacUtil._initialized = true;
	}
}
var bacutil = new BacUtil();