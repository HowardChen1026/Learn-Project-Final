(function($,c,y){var j=[],q=$.resize=$.extend($.resize,{}),b,w=false,x="setTimeout",z="resize",p=z+"-special-event",v="pendingDelay",k="activeDelay",d="throttleWindow";q[v]=200;q[k]=20;q[d]=true;$.event.special[z]={setup:function(){if(!q[d]&&this[x]){return false}var a=$(this);j.push(this);a.data(p,{w:a.width(),h:a.height()});if(j.length===1){b=y;g()}},teardown:function(){if(!q[d]&&this[x]){return false}var a=$(this);for(var f=j.length-1;f>=0;f--){if(j[f]==this){j.splice(f,1);break}}a.removeData(p);if(!j.length){if(w){cancelAnimationFrame(b)}else{clearTimeout(b)}b=null}},add:function(h){if(!q[d]&&this[x]){return false}var l;function f(m,o,i){var t=$(this),u=t.data(p)||{};u.w=o!==y?o:t.width();u.h=i!==y?i:t.height();l.apply(this,arguments)}if($.isFunction(h)){l=h;return f}else{l=h.handler;h.handler=f}}};function g(n){if(w===true){w=n||1}for(var m=j.length-1;m>=0;m--){var i=$(j[m]);if(i[0]==c||i.is(":visible")){var h=i.width(),a=i.height(),e=i.data(p);if(e&&(h!==e.w||a!==e.h)){i.trigger(z,[e.w=h,e.h=a]);w=n||true}}else{e=i.data(p);e.w=0;e.h=0}}if(b!==null){if(w&&(n==null||n-w<1000)){b=c.requestAnimationFrame(g)}else{b=setTimeout(g,q[v]);w=false}}}if(!c.requestAnimationFrame){c.requestAnimationFrame=function(){return c.webkitRequestAnimationFrame||c.mozRequestAnimationFrame||c.oRequestAnimationFrame||c.msRequestAnimationFrame||function(e,a){return c.setTimeout(function(){e((new Date).getTime())},q[k])}}()}if(!c.cancelAnimationFrame){c.cancelAnimationFrame=function(){return c.webkitCancelRequestAnimationFrame||c.mozCancelRequestAnimationFrame||c.oCancelRequestAnimationFrame||c.msCancelRequestAnimationFrame||clearTimeout}()}})(jQuery,this);(function(a){var c={};function b(f){function e(){var h=f.getPlaceholder();if(h.width()==0||h.height()==0){return}f.resize();f.setupGrid();f.draw()}function d(i,h){i.getPlaceholder().resize(e)}function g(i,h){i.getPlaceholder().unbind("resize",e)}f.hooks.bindEvents.push(d);f.hooks.shutdown.push(g)}a.plot.plugins.push({init:b,options:c,name:"resize",version:"1.0"})})(jQuery);