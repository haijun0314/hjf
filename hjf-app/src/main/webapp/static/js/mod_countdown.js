var Countdown = function(a) {
    this.target = $(a.target) || $("[data-widget='countdown']");
    this.endTime = a.endTime || 0;
    this.leftTime = a.leftTime || 0;
    this.el_hour = a.el_hour || "[data-countdown-role='hour']";
    this.el_min = a.el_min || "[data-countdown-role='min']";
    this.el_sec = a.el_sec || "[data-countdown-role='sec']";
    this.speed = a.speed || 1
};
Countdown.prototype.start = function() {
    var a = this;
    0 == a.leftTime && (a.leftTime = a.endTime - Date.parse(new Date) / 1E3);
    0 < a.leftTime && window.setInterval(function() {
        a.leftTime -= a.speed;
        if (0 < a.leftTime) {
            var b = Math.floor(a.leftTime / 3600),
            c = Math.floor((a.leftTime - 3600 * b) / 60),
            d = Math.floor(a.leftTime - 3600 * b - 60 * c);
            9 >= b && (b = "0" + b);
            b = b.toString();
            switch (a.target.find(a.el_hour).children().size()) {
            case 1:
                a.target.find(a.el_hour).children().eq(0).html(b);
                break;
            case 2:
                a.target.find(a.el_hour).children().eq(0).html(b[0]),
                a.target.find(a.el_hour).children().eq(1).html(b[1])
            }
            9 >= c && (c = "0" + c);
            c = c.toString();
            switch (a.target.find(a.el_min).children().size()) {
            case 1:
                a.target.find(a.el_min).children().eq(0).html(c);
                break;
            case 2:
                a.target.find(a.el_min).children().eq(0).html(c[0]),
                a.target.find(a.el_min).children().eq(1).html(c[1])
            }
            9 >= d && (d = "0" + d);
            d = d.toString();
            switch (a.target.find(a.el_sec).children().size()) {
            case 1:
                a.target.find(a.el_sec).children().eq(0).html(d);
                break;
            case 2:
                a.target.find(a.el_sec).children().eq(0).html(d[0]),
                a.target.find(a.el_sec).children().eq(1).html(d[1])
            }
        }
    },
    1E3 * a.speed)
};