(function(){var a=window.AWSC?AWSC:{},h=a.startTime,g=a.stdeltaStartTime,d=window.AWSConsoleMetrics?AWSConsoleMetrics:{},e=d.startTime,c=a.Clog?a.Clog:{},b=c.log;if(!b){return}if(h){f("stdelta-dec",e);f("stdelta-sim",g)}function f(j,i){if(i){b(j,i-h,undefined,undefined,"ms")}}})();(function(){var b=(window.ConsoleNavService&&ConsoleNavService.getLocation?ConsoleNavService.getLocation():window.location),n="/p/log/1/"+encodeURIComponent(b.pathname.split("/")[1])+"/1/OP/",h=2000,k=1950,j=20,w=10000,v=1,d=200;var q=0,i,u=0,e=false,f=false,s=false;setInterval(function(){if(u>=v){u=u-v}},w);var m=function t(y,A){var z="";if(y.key!==undefined){z+="&k"+A+"="+y.key;if(y.value!==undefined){z+="&m"+A+"="+y.value}if(y.detail!==undefined){z+="&d"+A+"="+y.detail}if(y.pageId){z+="&p"+A+"="+y.pageId}if(y.unit){z+="&u"+A+"="+y.unit}if(y.logLevel){z+="&l"+A+"="+y.logLevel}}return z},r=function o(){var z="",A=0,B={},C=n.length,y={key:"clogError",value:1,detail:"Error message too large."};while(AWSC.Clog.system.curItem()&&C<k){B=AWSC.Clog.system.curItem();if((n.length+m(B,A).length)>k){y.detail="Error message too large, truncating: "+B.detail.substring(0,d);C+=m(y,A).length;if(C<k){AWSC.Clog.system.dequeue();z+=m(y,A);A+=1}else{break}}else{C+=m(B,A).length;if(C<k){z+=m(AWSCLog.system.dequeue(),A);A+=1}else{break}}}if(z){g(n+z)}else{}window.clearTimeout(i);i=setTimeout(p,h)},p=function x(y){if(s){return true}s=true;if(!f){if(!(window.onerror.sbh)||!(window.error.sbh)||!(window.onbeforeunload.sbh)){var A="Event handlers modified:";if(!window.onerror.sbh){A+="onerror "}if(!window.error.sbh){A+="error "}if(!window.onbeforeunload.sbh){A+="onbeforeunload "}AWSC.Clog.system.prequeue("clogWarn",1,A);f=true}}if(AWSC.Clog.system.curItem()){var z=new Date().getTime();if(u>j){if(!e){g(n+"&k1=clogMaxCalls&m1=1");e=true}i=setTimeout(p,h)}else{if(q<z-h){r()}else{if(y===true){r()}else{i=setTimeout(p,h)}}}}s=false;return true},g=function l(y){y=AWSC.Clog.system.getEndpoint()+y;var z=y+"&cb="+(new Date().getTime());z=encodeURI(z);var A=new Image();A.src=z;q=(new Date().getTime());u+=1},a=function c(){var y=p();if(y){AWSC.Clog.system.onEnqueue(p);if(AWSC.Clog.system.curItem()){p(true)}}};if(window.addEventListener){window.addEventListener("load",a,false)}else{if(window.attachEvent){window.attachEvent("onload",a,false)}}})();