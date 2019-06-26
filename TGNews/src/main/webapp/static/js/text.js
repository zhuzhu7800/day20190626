// JavaScript Document
namespace = function() {
    var a = arguments;
    for (var c = 0; c < a.length; c++) {
        var f = a[c].split(".");
        var e = window;
        for (var b = 0; b < f.length; b++) {
            e[f[b]] = e[f[b]] || {};
            e = e[f[b]]
        }
    }
    return e
};
namespace("milo.base"); (function() {
    milo.base.extend = function(b, e) {
        if (b == null) {
            b = e
        } else {
            for (var c in e) {
                if (a(e[c]).toLowerCase() === "object" && a(b[c]).toLowerCase() === "object") {
                    extend(b[c], e[c])
                } else {
                    b[c] = e[c]
                }
            }
        }
        return b
    };
    milo.base.extendLess = function(b, f) {
        var c = f;
        for (var e in b) {
            if (isObject(f) && typeof(f[e]) != "undefined") {
                b[e] = c[e]
            }
        }
        return b
    };
    milo.base.extendClass = function(e, b) {
        var c = function() {};
        c.prototype = b.prototype;
        e.prototype = new c();
        e.prototype.constructor = e;
        e.superclass = b.prototype;
        if (b.prototype.constructor == Object.prototype.constructor) {
            b.prototype.constructor = b
        }
    };
    milo.base.cloneClass = function(b) {
        if (!isObject(b)) {
            return b
        }
        if (b == null) {
            return b
        }
        var e = new Object();
        for (var c in b) {
            e[c] = cloneClass(b[c])
        }
        return e
    };
    milo.base.bind = function(c, b) {
        return function() {
            return c.apply(b, arguments)
        }
    };
    milo.base.extend(milo.base, {
        isUndefined: function(b) {
            return b === undefined && typeof b == "undefined"
        },
        isArray: function(b) {
            return a(b).toLowerCase() === "array"
        },
        isFunction: function(b) {
            return a(b).toLowerCase() === "function"
        },
        isObject: function(b) {
            return a(b).toLowerCase() === "object"
        },
        isNumber: function(b) {
            return a(b).toLowerCase() === "number"
        },
        isString: function(b) {
            return a(b).toLowerCase() === "string"
        },
        isBoolean: function(b) {
            return a(b).toLowerCase() === "boolean"
        },
        isDate: function(b) {
            return a(b).toLowerCase() === "date"
        },
        isDom: function(c) {
            try {
                return c && typeof c === "object" && !isUndefined(c.nodeType) && c.nodeType == 1 && !isUndefined(c.nodeName) && typeof c.nodeName == "string"
            } catch(b) {
                return false
            }
        },
        getDomVal: function(b) {
            return b.value || b.innerHTML
        },
        forEach: function(f, g) {
            var c = 0,
            e = f.length,
            b;
            if (e !== undefined) {
                for (; c < e;) {
                    if (g.call(f[c], c, f[c++]) === false) {
                        break
                    }
                }
            } else {
                for (b in f) {
                    g.call(f[b], b, f[b])
                }
            }
        },
        g: function(b) {
            return (typeof b == "object") ? b: document.getElementById(b)
        }
    });
    function a(b) {
        return b == null ? String(b) : Object.prototype.toString.call(b).replace(/\[object\s+(\w+)\]/i, "$1") || "object"
    }
})();
milo.base.extend(window, milo.base);
namespace("milo.config"); (function() {
    var a = {
        loaderPath: "http://ossweb-img.qq.com/images/js/milo/",
        version: "20130701",
        expires: 30000
    };
    extend(milo.config, a)
})();
namespace("milo.loader"); (function(r) {
    var h = null,
    l = {},
    g = {},
    o = [],
    q = {};
    charset = "gb2312";
    r.set = function(t) {
        charset = t.charset
    };
    r.need = function(t, v) {
        if (!isArray(t)) {
            t = new Array(t)
        }
        var u = e("", t, v);
        b(u);
        return undefined
    };
    r.define = function(t, u, v) {
        if (!isString(t)) {
            v = u;
            u = t;
            t = null
        }
        if (!isArray(u)) {
            v = u;
            u = []
        }
        o.push([t, u, v]);
        return undefined
    };
    r.define.amd = {
        jQuery: true
    };
    r.include = function(v, w) {
        var u = new Array();
        u = u.concat(v);
        if (!isFunction(w)) {
            w = function() {}
        }
        var t = k(u, w);
        b(t)
    };
    r.loadScript = function(t, u) {
        if (!isFunction(u)) {
            u = function() {}
        }
        a(t, u)
    };
    r.loadCSS = function(u, v) {
        if (u.search(/^http:\/\//i) == -1) {
            u = milo.config.loaderPath + u.replace(/\./g, "/") + ".css?" + milo.config.version
        }
        var t = /\.css(\?|$)/i.test(u);
        if (!isFunction(v)) {
            v = function() {}
        }
        if (t & !l[u]) {
            f(u, v);
            l[u] = true
        }
    };
    function e(v, w, B) {
        var z = 0,
        u = 0,
        x = 0,
        A = {};
        for (var y = 0; y < w.length; y++) {
            var t = n(w[y]);
            z++;
            w[y] = w[y].replace(/\//g, ".");
            if (l[w[y]] || g[w[y]]) {
                u++;
                continue
            }
            A[w[y]] = t
        }
        return {
            name: v,
            modules: w,
            need: A,
            res: new Array(),
            expires: (w.length) * milo.config.expires,
            callback: B,
            needown: z,
            hasdown: u,
            hasmaped: x,
            loadUrlCallback: function(D, C) {
                this.hasdown++;
                if (D) {
                    l[C] = true;
                    while (1) {
                        var F = o.splice(0, 1).pop();
                        if (F == null) {
                            q[C] = D;
                            break
                        }
                        if (F[0] && F[0].toLowerCase() != C.substr(C.lastIndexOf(".") + 1).toLowerCase() && F[0].toLowerCase().indexOf(C.substr(C.lastIndexOf(".") + 1).toLowerCase()) < 0 && C.toLowerCase().indexOf(F[0].toLowerCase()) < 0) {} else {
                            F[0] = C;
                            var E = e.apply(null, F);
                            b(E);
                            break
                        }
                    }
                } else {
                    q[C] = "undefined"
                }
            },
            loadInluderCallback: function(C) {
                if (!C) {}
                this.checkMaped()
            },
            completeLoad: function(E) {
                var C = [];
                for (var D = 0; D < this.modules.length; D++) {
                    C.push(this.res[this.modules[D]])
                }
                if (!isFunction(this.callback) && !isObject(this.callback)) {
                    return false
                }
                if (this.name == "") {
                    this.callback.apply(null, C)
                } else {
                    isObject(this.callback) ? q[this.name] = this.callback: q[this.name] = this.callback.apply(null, C)
                }
            },
            checkMaped: function() {
                for (var C = 0; C < this.modules.length; C++) {
                    if (isUndefined(this.res[this.modules[C]]) && !isUndefined(q[this.modules[C]])) {
                        this.res[this.modules[C]] = q[this.modules[C]];
                        this.hasmaped++
                    }
                }
                if (this.hasmaped == this.needown) {
                    this.completeLoad.apply(this, [true]);
                    return
                }
                if (this.hasmaped < this.needown && this.expires <= 0) {
                    for (var C = 0; C < this.modules.length; C++) {
                        if (!isObject(q[this.modules[C]])) {
                            this.res[this.modules[C]] = "undefined";
                            this.hasmaped++
                        }
                    }
                    this.completeLoad.apply(this, [false]);
                    return
                }
                if (this.hasmaped < this.needown && this.expires > 0) {
                    this.expires = this.expires - 50;
                    var D = this;
                    setTimeout(function() {
                        D.checkMaped()
                    },
                    50)
                }
            }
        }
    }
    function b(v) {
        var u = v.need;
        for (var t in u) {
            s(u[t], t, v)
        }
        c(v)
    }
    function s(v, u, w) {
        var t = /\.css(\?|$)/i.test(v);
        g[u] = true;
        t ? f(v,
        function(x) {
            w.loadUrlCallback.call(w, [x, u])
        }) : a(v,
        function(x) {
            w.loadUrlCallback.apply(w, [x, u])
        })
    }
    function c(t) {
        if (t.hasdown == t.needown) {
            t.loadInluderCallback.apply(t, [true]);
            return
        }
        if (t.hasdown < t.needown && t.expires <= 0) {
            t.loadInluderCallback.apply(t, [false]);
            return
        }
        if (t.hasdown < t.needown && t.expires > 0) {
            t.expires = t.expires - 50;
            setTimeout(function() {
                c(t)
            },
            50)
        }
    }
    function n(t) {
        if (t.search(/^http:\/\//i) == -1) {
            t = milo.config.loaderPath + t.replace(/\./g, "/") + ".js?" + milo.config.version
        }
        return t
    }
    function p() {
        return null
    }
    function k(x, z) {
        var t = 0,
        y = 0,
        w = {};
        for (var v = 0; v < x.length; v++) {
            var u = n(x[v]);
            t++;
            if (l[x[v]]) {
                y++;
                break
            }
            w[x[v]] = u
        }
        return {
            files: x,
            need: w,
            res: new Array(),
            expires: t * milo.config.expires,
            callback: z,
            needown: t,
            hasdown: y,
            loadUrlCallback: function(B, A) {
                if (B) {
                    this.hasdown++
                }
                l[A] = B
            },
            loadInluderCallback: function(A) {
                var C = [];
                for (var B = 0; B < this.files.length; B++) {
                    C.push(l[this.files[B]])
                }
                this.callback.apply(null, C)
            }
        }
    }
    function a(u, x) {
        var v = document.getElementsByTagName("head")[0];
        var t = document.createElement("script");
        t.type = "text/javascript";
        t.charset = charset;
        t.src = u;
        var w = setTimeout(function() {
            v.removeChild(t);
            x.call(this, false)
        },
        milo.config.expires);
        j(t,
        function(y) {
            v.removeChild(t);
            clearTimeout(w);
            x(true)
        });
        v.appendChild(t);
        return true
    }
    function f(t, w) {
        var u = document.getElementsByTagName("head")[0];
        var v = u.appendChild(document.createElement("link"));
        v.href = t;
        v.rel = "stylesheet";
        w.call(this, true)
    }
    function j(u, v) {
        var t = ("onload" in u) ? true: (function() {
            u.setAttribute("onload", "");
            return typeof u.onload == "function"
        })();
        if (document.addEventListener) {
            u.addEventListener("load",
            function() {
                v.call(this, u)
            },
            false)
        } else {
            if (!t) {
                u.attachEvent("onreadystatechange",
                function() {
                    var w = u.readyState.toLowerCase();
                    if (w === "loaded" || w === "complete") {
                        u.detachEvent("onreadystatechange");
                        v.call(this, u.innerHTML)
                    }
                })
            } else {}
        }
    }
})(milo.loader);
extend(window, milo.loader);
namespace("milo.dom"); (function() {
    var b = milo.dom;
    var a = navigator.userAgent.toLowerCase();
    extend(b, {
        browser: {
            version: (a.match(/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [0, "0"])[1],
            webkit: /webkit/.test(a),
            opera: /opera/.test(a),
            msie: /msie/.test(a) && !/opera/.test(a),
            mozilla: /mozilla/.test(a) && !/(compatible|webkit)/.test(a),
            tt: /tencenttraveler/.test(a),
            chrome: /chrome/.test(a),
            firefox: /firefox/.test(a),
            safari: /safari/.test(a),
            gecko: /gecko/.test(a),
            ie6: this.msie && this.version.substr(0, 1) == "6"
        },
        g: function(c) {
            return (typeof c == "object") ? c: document.getElementById(c)
        },
        hasClassName: function(c, e) {
            var f = c.className;
            return (f.length > 0 && (f == e || new RegExp("(^|\\s)" + e + "(\\s|$)").test(f)))
        },
        addClassName: function(c, e) {
            if (!milo.hasClassName(c, e)) {
                c.className += (c.className ? " ": "") + e
            }
            return c
        },
        removeClassName: function(c, e) {
            c.className = milo.trim(c.className.replace(new RegExp("(^|\\s+)" + e + "(\\s+|$)"), " "));
            return c
        },
        setStyle: function(f, e) {
            for (var c in e) {
                f.style[c] = e[c]
            }
        },
        getStyle: function(e, g) {
            var f = isFunction(document.defaultView) ? document.defaultView() : document.defaultView;
            if (f && f.getComputedStyle) {
                var c = f.getComputedStyle(e, null);
                return c && c.getPropertyValue(g)
            }
            return (e.currentStyle && (e.currentStyle[g] || null) || null)
        },
        getMaxH: function() {
            return (this.getPageHeight() > this.getWinHeight() ? this.getPageHeight() : this.getWinHeight())
        },
        getMaxW: function() {
            return (this.getPageWidth() > this.getWinWidth() ? this.getPageWidth() : this.getWinWidth())
        },
        getPageHeight: function() {
            var c = (window.innerHeight && window.scrollMaxY) ? (window.innerHeight + window.scrollMaxY) : (document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight: document.body.offsetHeight);
            return c > document.documentElement.scrollHeight ? c: document.documentElement.scrollHeight
        },
        getPageWidth: function() {
            return (window.innerWidth && window.scrollMaxX) ? (window.innerWidth + window.scrollMaxX) : (document.body.scrollWidth > document.body.offsetWidth ? document.body.scrollWidth: document.body.offsetWidth)
        },
        getWinHeight: function() {
            return (window.innerHeight) ? window.innerHeight: (document.documentElement && document.documentElement.clientHeight) ? document.documentElement.clientHeight: document.body.offsetHeight
        },
        getWinWidth: function() {
            return (window.innerWidth) ? window.innerWidth: (document.documentElement && document.documentElement.clientWidth) ? document.documentElement.clientWidth: document.body.offsetWidth
        },
        setOpacity: function(c, e) {
            if (this.browser.msie && (!document.documentMode || document.documentMode < 9)) {
                c.style.filter = "Alpha(opacity=" + e + ")"
            } else {
                c.style.opacity = e / 100
            }
        },
        getX: function(f) {
            var c = f.offsetLeft;
            while (f = f.offsetParent) {
                c += f.offsetLeft
            }
            return c
        },
        getY: function(f) {
            var c = f.offsetTop;
            while (f = f.offsetParent) {
                c += f.offsetTop
            }
            return c
        },
        request: function(g) {
            var c = window.location.href.replace(/#+.*$/, ""),
            k = c.substring(c.indexOf("?") + 1, c.length).split("&"),
            j = {};
            for (var f = 0; f < k.length; f++) {
                var l = k[f].indexOf("="),
                e = k[f].substring(0, l),
                h = k[f].substring(l + 1);
                j[e] = h
            }
            return (typeof(j[g]) == "undefined") ? "": j[g]
        }
    })
})();
namespace("milo.array"); (function() {
    var a = milo.array;
    extend(a, {
        getLength: function(b) {
            var c = 0;
            for (var e in b) {
                c++
            }
            return c
        },
        clone: function(b) {
            var c = [];
            for (var e = 0; e < b.length; ++e) {
                c.push(b[e])
            }
            return c
        },
        hasValue: function(b, e) {
            var f = false;
            if (isArray(b) || isObject(b)) {
                for (var c in b) {
                    if (b[c] == e) {
                        f = true
                    }
                }
            }
            return f
        },
        getArrayKey: function(b, f) {
            var e = -1;
            if (isArray(b) || isObject(b)) {
                for (var c in b) {
                    if (b[c] == f) {
                        e = c
                    }
                }
            }
            return e
        },
        filter: function(c, b) {
            var f = [];
            for (var e = 0; e < c.length; e++) {
                if (!milo.hasValue(b, c[e])) {
                    f.push(c[e])
                }
            }
            return f
        },
        unique: function(c, b) {
            return milo.filter(c, b).concat(milo.filter(b, c))
        }
    })
})();
namespace("milo.string"); (function() {
    var a = milo.string;
    extend(a, {
        getByteLength: function(e) {
            var b = 0,
            c = 0;
            for (; c < e.length; ++c, ++b) {
                if (e.charCodeAt(c) > 255) {++b
                }
            }
            return b
        },
        getDwordNum: function(b) {
            return a.getByteLength(b) - b.length
        },
        getChineseNum: function(b) {
            return b.length - b.replace(/[\u4e00-\u9fa5]/g, "").length
        },
        cutChinese: function(g, f, c) {
            if (isNaN(f)) {
                return g
            }
            if (a.getByteLength(g) <= f) {
                return g
            }
            var e = 0,
            b = 0;
            for (; e < g.length && b < f; ++e, ++b) {
                if (g.charCodeAt(e) > 255) {++b
                }
            }
            c = c || "";
            return (b - f == 1 ? g.substr(0, e - 1) : g.substr(0, e)) + c
        },
        trimLeft: function(b) {
            return b.replace(/^\s+/, "")
        },
        trimRight: function(b) {
            return b.replace(/\s+$/, "")
        },
        trim: function(b) {
            return milo.trimRight(milo.trimLeft(b))
        },
        replacePairs: function() {
            var e = arguments[0];
            for (var b = 1; b < arguments.length; ++b) {
                var c = new RegExp(arguments[b][0], "g");
                e = e.replace(c, arguments[b][1])
            }
            return e
        },
        toHtml: function(c) {
            var b = [["&", "&#38;"], [" ", "&#32;"], ["'", "&#39;"], ['"', "&#34;"], ["/", "&#47;"], ["<", "&#60;"], [">", "&#62;"], ["\\\\", "&#92;"], ["\n", "<br />"], ["\r", ""]];
            return milo.replacePairs.apply(this, [c].concat(b))
        },
        isMail: function(b) {
            return /^(?:[\w-]+\.?)*[\w-]+@(?:[\w-]+\.)+[\w]{2,3}$/.test(b)
        },
        isTel: function(b) {
            return /^[+]{0,1}(\d){1,3}[ ]?([-]?((\d)|[ ]){1,12})+$/.test(b)
        },
        isMobile: function(b) {
            return /^1[3458]\d{9}$/.test(b)
        },
        isZipCode: function(b) {
            return /^(\d){6}$/.test(b)
        },
        isIDCard: function(e) {
            var b = function(f) {
                var g = f.substring(0, 6) + "19" + f.substring(6, 15);
                var k = ["1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2"];
                var j = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
                var h = 0;
                for (i = 0; i < g.length; i++) {
                    h += g.substring(i, i + 1) * j[i]
                }
                h %= 11;
                g += k[h];
                return g
            };
            var c = function(g) {
                var l = {
                    11 : "北京",
                    12 : "天津",
                    13 : "河北",
                    14 : "山西",
                    15 : "内蒙古",
                    21 : "辽宁",
                    22 : "吉林",
                    23 : "黑龙江",
                    31 : "上海",
                    32 : "江苏",
                    33 : "浙江",
                    34 : "安徽",
                    35 : "福建",
                    36 : "江西",
                    37 : "山东",
                    41 : "河南",
                    42 : "湖北",
                    43 : "湖南",
                    44 : "广东",
                    45 : "广西",
                    46 : "海南",
                    50 : "重庆",
                    51 : "四川",
                    52 : "贵州",
                    53 : "云南",
                    54 : "西藏",
                    61 : "陕西",
                    62 : "甘肃",
                    63 : "青海",
                    64 : "宁夏",
                    65 : "新疆",
                    71 : "台湾",
                    81 : "香港",
                    82 : "澳门",
                    91 : "国外"
                };
                var k = 0,
                n = "",
                f = g;
                if (!/^\d{17}(\d|x)$/i.test(f)) {
                    return false
                }
                f = f.replace(/x$/i, "a");
                if (l[parseInt(f.substr(0, 2))] == null) {
                    return false
                }
                var j = f.substr(6, 4) + "-" + Number(f.substr(10, 2)) + "-" + Number(f.substr(12, 2));
                var o = new Date(j.replace(/-/g, "/"));
                if (j != (o.getFullYear() + "-" + (o.getMonth() + 1) + "-" + o.getDate())) {
                    return false
                }
                for (var h = 17; h >= 0; h--) {
                    k += (Math.pow(2, h) % 11) * parseInt(f.charAt(17 - h), 11)
                }
                if (k % 11 != 1) {
                    return false
                }
                return true
            };
            return e.length == 15 ? c(b(e)) : c(e)
        },
        isChinese: function(b) {
            return milo.getChineseNum(b) == b.length ? true: false
        },
        isEnglish: function(b) {
            return /^[A-Za-z]+$/.test(b)
        },
        isURL: function(b) {
            return /^http:\/\/[A-Za-z0-9-_]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/.test(b)
        },
        isNumberString: function(b) {
            return /^\d+$/.test(b)
        }
    })
})();
namespace("milo.cookie"); (function() {
    var a = milo.cookie;
    extend(a, {
        set: function(h, k, f, b, c, g) {
            if (h == undefined) {
                return
            }
            if (k == undefined) {
                k = ""
            }
            var j = [h + "=" + escape(k)];
            if (!isNaN(f)) {
                var e = new Date();
                e.setTime(e.getTime() + f * 1000);
                f == 0 ? "": j.push("expires=" + e.toGMTString())
            }
            if (b != undefined) {
                j.push("domain=" + b)
            }
            if (c != undefined) {
                j.push("path=" + c)
            }
            if (g) {
                j.push("secure")
            }
            document.cookie = j.join("; ")
        },
        get: function(f, c) {
            var e = "(?:; |^)" + f + "=([^;]*);?";
            var b = new RegExp(e);
            if (b.test(document.cookie)) {
                return unescape(RegExp["$1"])
            } else {
                return c || null
            }
        },
        clear: function(f, b, c) {
            var e = new Date();
            a.set(f, "", -e.getTime() / 1000, b, c)
        }
    })
})();
namespace("milo.date"); (function() {
    var b = milo.date;
    var a = new Date();
    extend(b, {
        toDateString: function(f) {
            var c = [],
            e = isDate(f) ? f: a;
            m = e.getMonth() + 1,
            d = e.getDate(),
            sep = arguments[1] ? arguments[1] : (isString(arguments[0]) ? arguments[0] : "-");
            c.push(e.getFullYear());
            c.push(m.toString().length < 2 ? "0" + m: m);
            c.push(d.toString().length < 2 ? "0" + d: d);
            return c.join(sep)
        },
        toDateTimeString: function(k) {
            var j = isDate(k) ? k: a,
            g = j.getHours(),
            e = j.getMinutes(),
            f = j.getSeconds(),
            c = [];
            c.push(g.toString().length < 2 ? "0" + g: g);
            c.push(e.toString().length < 2 ? "0" + e: e);
            c.push(f.toString().length < 2 ? "0" + f: f);
            return b.toDateString.apply(this, arguments) + " " + c.join(":")
        },
        isLeapYear: function(c) {
            return (0 == c % 4 && ((c % 100 != 0) || (c % 400 == 0)))
        },
        getSeverDateTime: function() {
            var e = window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
            e.open("HEAD", window.location.href, false);
            e.send();
            var c = new Date(e.getResponseHeader("Date"));
            return c
        }
    })
})();
namespace("milo.number"); (function() {
    var a = milo.number;
    extend(a, {
        isInt: function(e, c, b) {
            if (!isFinite(e)) {
                return false
            }
            if (!/^[+-]?\d+$/.test(e)) {
                return false
            }
            if (c != undefined && parseInt(e) < parseInt(c)) {
                return false
            }
            if (b != undefined && parseInt(e) > parseInt(b)) {
                return false
            }
            return true
        },
        isFloat: function(e, b, c) {
            if (!isFinite(e)) {
                return false
            }
            if (b != undefined && parseFloat(e) < parseFloat(b)) {
                return false
            }
            if (c != undefined && parseFloat(e) > parseFloat(c)) {
                return false
            }
            return true
        },
        isQQ: function(b) {
            return /^[1-9]{1}\d{4,11}$/.test(b)
        },
        randomInt: function(b) {
            return Math.floor(Math.random() * b)
        }
    })
})();
namespace("milo.event"); (function() {
    var b = milo.event;
    extend(b, {
        preventDefault: function(f) {
            if (f.preventDefault) {
                f.preventDefault()
            } else {
                f.returnValue = false
            }
        },
        stopPropagation: function(f) {
            if (f.stopPropagation) {
                f.stopPropagation()
            } else {
                f.cancelBubble = true
            }
        },
        addEvent: function(g, f, e) {
            if (window.addEventListener) {
                g["e" + f + e] = e;
                g[f + e] = function(j) {
                    var h = j || window.event,
                    k = g["e" + f + e](h);
                    if (k == false) {
                        milo.preventDefault(h);
                        milo.stopPropagation(h)
                    }
                };
                g.addEventListener(f, g[f + e], false)
            } else {
                if (window.attachEvent) {
                    g["e" + f + e] = e;
                    g[f + e] = function(h) {
                        var j = g["e" + f + e](window.event);
                        if (j == false) {
                            milo.preventDefault(window.event)
                        }
                    };
                    g.attachEvent("on" + f, g[f + e]);
                    return
                } else {
                    g["on" + f] = e
                }
            }
        },
        removeEvent: function(g, f, e) {
            if (window.removeEventListener) {
                g.removeEventListener(f, g[f + e], false);
                g[f + e] = null
            } else {
                if (window.detachEvent) {
                    g.detachEvent("on" + f, g[f + e]);
                    g[f + e] = null;
                    return
                } else {
                    g["on" + f] = null
                }
            }
        },
        isReady: false,
        readyFn: [],
        ready: function(e) {
            c();
            if (milo.isReady) {
                e.call()
            } else {
                if (isFunction(e)) {
                    milo.readyFn.push(e)
                }
            }
        }
    });
    function c() {
        if (document.readyState === "complete") {
            return a()
        }
        if (document.addEventListener) {
            document.addEventListener("DOMContentLoaded",
            function() {
                document.removeEventListener("DOMContentLoaded", arguments.callee, false);
                a()
            },
            false);
            window.addEventListener("load", a, false)
        } else {
            if (document.attachEvent) {
                document.attachEvent("onreadystatechange",
                function() {
                    if (document.readyState === "complete") {
                        document.detachEvent("onreadystatechange", arguments.callee);
                        a()
                    }
                });
                window.attachEvent("onload", a);
                if (document.documentElement.doScroll && window == window.top) {
                    if (milo.isReady) {
                        return
                    }
                    try {
                        document.documentElement.doScroll("left")
                    } catch(f) {
                        setTimeout(arguments.callee, 0);
                        return
                    }
                    a()
                }
            }
        }
    }
    function a() {
        if (!milo.isReady) {
            if (!document.body) {
                return setTimeout(a, 13)
            }
            milo.isReady = true;
            if (milo.readyFn.length > 0) {
                var e = 0,
                f;
                while (f = milo.readyFn[e++]) {
                    f.call()
                }
                milo.readyFn.length = 0
            }
        }
    }
})();
namespace("milo.object"); (function() {
    extend(milo.object, {
        serialize: function(e) {
            var c = null;
            if (typeof(e) == "undefined" || typeof(e) == "function") {
                c = ""
            }
            if (typeof(e) == "number") {
                c = e.toString()
            }
            if (typeof(e) == "boolean") {
                c = (e) ? "1": "0"
            }
            if (typeof(e) == "object") {
                if (!e) {
                    c = ""
                }
                if (e instanceof RegExp) {
                    c = e.toString()
                }
            }
            if (typeof(e) == "string") {
                c = e
            }
            if (typeof(c) == "string") {
                return encodeURIComponent(c)
            }
            var a = [];
            if (e instanceof Array) {
                for (var b = 0; b < e.length; b++) {
                    if (typeof(e[b]) == "undefined") {
                        continue
                    }
                    a.push(typeof(e[b]) == "object" ? "": milo.serialize(e[b]))
                }
                return a.join("|")
            } else {
                for (var b in e) {
                    if (typeof(e[b]) == "undefined") {
                        continue
                    }
                    c = null;
                    if (typeof(e[b]) == "object") {
                        if (e[b] instanceof Array) {
                            c = e[b];
                            a.push(b + "=" + milo.serialize(c))
                        } else {
                            a.push(b + "=")
                        }
                    } else {
                        c = e[b];
                        a.push(b + "=" + milo.serialize(c))
                    }
                }
                return a.join("&")
            }
        },
        unSerialize: function(a, j) {
            j = j || 0;
            a = a.toString();
            if (!a) {
                return {}
            }
            var f = {},
            b = a.split("&");
            if (b.length == 0) {
                return f
            }
            for (var c = 0; c < b.length; c++) {
                if (!b[c]) {
                    continue
                }
                var e = b[c].split("=");
                if (e.length >= 2) {
                    var h = b[c].substr(0, b[c].indexOf("=")),
                    g = b[c].substr(b[c].indexOf("=") + 1);
                    if (!g) {
                        g = ""
                    }
                    if (h) {
                        f[h] = j == 0 ? decodeURIComponent(g) : g
                    }
                }
            }
            return f
        },
        decode: function(a) {
            if (typeof(a) == "string") {
                try {
                    return decodeURIComponent(a)
                } catch(c) {}
                return a
            }
            if (typeof(a) == "object") {
                if (a == null) {
                    return null
                }
                if (a instanceof Array) {
                    for (var b = 0; b < a.length; b++) {
                        a[b] = milo.decode(a[b])
                    }
                    return a
                } else {
                    if (a instanceof RegExp) {
                        return a
                    } else {
                        for (var b in a) {
                            a[b] = milo.decode(a[b])
                        }
                        return a
                    }
                }
            }
            return a
        }
    })
})();
milo.base.extend(milo, milo.dom);
milo.base.extend(milo, milo.array);
milo.base.extend(milo, milo.string);
milo.base.extend(milo, milo.date);
milo.base.extend(milo, milo.number);
milo.base.extend(milo, milo.event);
milo.base.extend(milo, milo.object);
namespace("milo.ams"); (function() {
    function getAmsFile(amsActivityId, flowId, callback) {
        if (!isFunction(callback)) {
            callback = function(obj) {}
        }
        var cur_actdesc = window["ams_actdesc_" + amsActivityId];
        if (isObject(cur_actdesc)) {
            callback(cur_actdesc);
            return
        }
        if (!amsActivityId || isNaN(amsActivityId) || amsActivityId <= 0) {
            return
        }
		
        var _url = "http://" + window.location.host + "/comm-htdocs/js/ams/v0.2R02/act/" + amsActivityId + "/act.desc.js";
        include(_url,
        function(loaded) {
			alert(_url);
            if (!loaded) {
                return
            }
            callback(window["ams_actdesc_" + amsActivityId]);
            return
        })
    }
    function getDesc(obj, callback) {
        var actDesc = window["ams_actdesc_" + obj.actId],
        _url = "http://" + window.location.host + "/comm-htdocs/js/ams/v0.2R02/act/" + obj.actId + "/act.desc.js";
        if (isObject(actDesc)) {
            callback(obj, actDesc);
            return
        }
        include(_url,
        function(loaded) {
            callback(obj, window["ams_actdesc_" + obj.actId]);
            return
        })
    }
    function init(obj) {
        getDesc(obj,
        function(obj, descData) {
            var flows = descData.flows,
            flow = null,
            cfg = obj;
            for (fid in flows) {
                if (fid == "f_" + obj.flowId) {
                    flow = flows[fid];
                    break
                }
            }
            if (flow == null) {
                return
            }
            if (flow.functions[0].sExtModuleId == null) {
                need("ams.flowengine",
                function(FlowEngine) {
                    FlowEngine.submit(window["amsCfg_" + obj.flowId])
                })
            } else {
                var modName = flow.functions[0].method;
                if (obj.modJsPath && obj.modJsPath.indexOf("http") === -1) {} else {
                    if (obj.modJsPath) {}
                }
                need("ams." + modName,
                function() {
                    var module = modName.split("."),
                    mn = module[module.length - 1],
                    newObj = window[mn + "_" + obj.flowId];
                    if (isObject(newObj) && isFunction(obj.modSubmit)) {
                        if (!isFunction(newObj.submit)) {
                            newObj.init(cfg);
                            return false
                        } else {
                            if (cfg._everyRead && isFunction(newObj.submit)) {
                                newObj.init(cfg);
                                obj.modSubmit(window[mn + "_" + obj.flowId]);
                                return false
                            } else {
                                obj.modSubmit(newObj);
                                return false
                            }
                        }
                    }
                    window[mn + "_" + obj.flowId] = cloneClass(arguments[0]);
                    window[mn + "_" + obj.flowId].init(cfg);
                    if (isFunction(obj.modSubmit)) {
                        obj.modSubmit(window[mn + "_" + obj.flowId])
                    }
                })
            }
        })
    }
    function submit(obj) {
        obj.modSubmit = function(modObj) {
            if (isFunction(modObj.submit)) {
                modObj.submit(obj.flowId)
            }
        };
        init(obj)
    }
    extend(milo.ams, {
        amsInit: function(amsActivityId, flowId, callback) {
            if (arguments.length === 1) {
                init(amsActivityId);
                return
            }
            getAmsFile(amsActivityId, flowId,
            function(ams_actdesc) {
                var flows = ams_actdesc.flows,
                flow = null,
                cfg = window["amsCfg_" + flowId] || {};
                for (fid in flows) {
                    if (fid == "f_" + flowId) {
                        flow = flows[fid];
                        break
                    }
                }
                if (flow == null) {
                    return
                }
                cfg.iAMSActivityId = amsActivityId;
                cfg.iFlowId = flowId;
                if (flow.functions[0].sExtModuleId == null) {
                    need("ams.flowengine",
                    function(FlowEngine) {
                        FlowEngine.submit(window["amsCfg_" + flowId])
                    })
                } else {
                    var modName = flow.functions[0].method;
                    if ((amsActivityId > 6686) && (amsActivityId != 6688) && (amsActivityId != 6701) && (amsActivityId != 6731) && (modName == "share.microblogFix" || modName == "share.microblogUser" || modName == "share.qqgameFeed" || modName == "share.qqSignButton" || modName == "share.qqSignQueryTime" || modName == "share.qqSignRadio" || modName == "share.qzoneFix" || modName == "share.qzoneUser" || modName == "share.shareQueryHistory")) {
                        flow.functions[0].method = "share.commShare"
                    }
                    if ((amsActivityId == 6370 || amsActivityId == 6241) && (modName == "share.microblogFix" || modName == "share.microblogUser" || modName == "share.qqgameFeed" || modName == "share.qqSignButton" || modName == "share.qqSignQueryTime" || modName == "share.qqSignRadio" || modName == "share.qzoneFix" || modName == "share.qzoneUser" || modName == "share.shareQueryHistory")) {
                        flow.functions[0].method = "share.commShare"
                    }
                    need("ams." + flow.functions[0].method,
                    function() {
                        var module = flow.functions[0].method.split("."),
                        mn = module[module.length - 1],
                        newObj = window[mn + "_" + flowId];
                        if (isObject(newObj) && isFunction(callback)) {
                            if (!isFunction(newObj.submit)) {
                                newObj.init(cfg, flow);
                                return false
                            } else {
                                if (cfg._everyRead && isFunction(newObj.submit)) {
                                    newObj.init(cfg, flow);
                                    callback(window[mn + "_" + flowId]);
                                    return false
                                } else {
                                    callback(newObj);
                                    return false
                                }
                            }
                        }
                        window[mn + "_" + flowId] = cloneClass(arguments[0]);
                        window[mn + "_" + flowId].init(cfg, flow);
                        if (isFunction(callback)) {
                            callback(window[mn + "_" + flowId])
                        }
                    })
                }
            })
        },
        amsSubmit: function(amsActivityId, flowId) {
            if (arguments.length === 1) {
                submit(amsActivityId);
                return
            }
            var caller = arguments.callee.caller;
            if ((window.event && window.event.srcElement && window.event.srcElement != document) || (caller && caller.arguments[0])) {
                var ev = window.event || caller.arguments[0];
                if (ev[0]) {
                    var target = ev[0]
                } else {
                    var target = ev.srcElement || ev.target
                }
                if (target) {
                    var data = (target.getAttribute && target.getAttribute("action-data")) || {};
                    _amsCFG = window["amsCfg_" + flowId];
                    try {
                        _amsCFG.triggerSourceData = eval("(" + data + ")")
                    } catch(e) {
                        _amsCFG.triggerSourceData = data
                    }
                }
            }
            amsInit(amsActivityId, flowId,
            function(obj) {
                if (isFunction(obj.submit)) {
                    obj.submit(flowId)
                }
            })
        }
    })
})();
milo.base.extend(window, milo.ams);
namespace("milo.ui"); (function() {
    extend(milo.ui, {
        alert: function(a) {
            alert(a)
        }
    })
})();
/*  |xGv00|728e8bd157add7a658ab7ea8e968de97 */
