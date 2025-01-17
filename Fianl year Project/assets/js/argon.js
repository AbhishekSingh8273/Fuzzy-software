/*!

=========================================================
* Argon Dashboard PRO - v1.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard
* Copyright 2018 Creative Tim (https://www.creative-tim.com)

* Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

*/
"use strict";
var Layout = function() {
        function e() {
            $(".sidenav-toggler").addClass("active"), $(".sidenav-toggler").data("action", "sidenav-unpin"), $("body").removeClass("g-sidenav-hidden").addClass("g-sidenav-show g-sidenav-pinned"), $("body").append('<div class="backdrop d-xl-none" data-action="sidenav-unpin" data-target=' + $("#sidenav-main").data("target") + " />"), Cookies.set("sidenav-state", "pinned")
        }

        function a() {
            $(".sidenav-toggler").removeClass("active"), $(".sidenav-toggler").data("action", "sidenav-pin"), $("body").removeClass("g-sidenav-pinned").addClass("g-sidenav-hidden"), $("body").find(".backdrop").remove(), Cookies.set("sidenav-state", "unpinned")
        }
         $(".sidenav").on("mouseenter", function() {
            $("body").hasClass("g-sidenav-pinned") || $("body").removeClass("g-sidenav-hide").removeClass("g-sidenav-hidden").addClass("g-sidenav-show")
        }), $(".sidenav").on("mouseleave", function() {
            $("body").hasClass("g-sidenav-pinned") || ($("body").removeClass("g-sidenav-show").addClass("g-sidenav-hide"), setTimeout(function() {
                $("body").removeClass("g-sidenav-hide").addClass("g-sidenav-hidden")
            }, 300))
        }), $(window).on("load resize", function() {
            $("body").height() < 800 && ($("body").css("min-height", "100vh"), $("#footer-main").addClass("footer-auto-bottom"))
        })
    }(),
    Charts = function() {
        var e, a = $('[data-toggle="chart"]'),
            t = "light",
            n = {
                base: "Open Sans"
            },
            i = {
                gray: {
                    100: "#f6f9fc",
                    200: "#e9ecef",
                    300: "#dee2e6",
                    400: "#ced4da",
                    500: "#adb5bd",
                    600: "#8898aa",
                    700: "#525f7f",
                    800: "#32325d",
                    900: "#212529"
                },
                theme: {
                    default: "#172b4d",
                    primary: "#5e72e4",
                    secondary: "#f4f5f7",
                    info: "#11cdef",
                    success: "#2dce89",
                    danger: "#f5365c",
                    warning: "#fb6340"
                },
                black: "#12263F",
                white: "#FFFFFF",
                transparent: "transparent"
            };

        function o(e, a) {
            for (var t in a) "object" != typeof a[t] ? e[t] = a[t] : o(e[t], a[t])
        }

        function l(e) {
            var a = e.data("add"),
                t = $(e.data("target")).data("chart");
            e.is(":checked") ? (! function e(a, t) {
                for (var n in t) Array.isArray(t[n]) ? t[n].forEach(function(e) {
                    a[n].push(e)
                }) : e(a[n], t[n])
            }(t, a), t.update()) : (! function e(a, t) {
                for (var n in t) Array.isArray(t[n]) ? t[n].forEach(function(e) {
                    a[n].pop()
                }) : e(a[n], t[n])
            }(t, a), t.update())
        }

        function r(e) {
            var a = e.data("update"),
                t = $(e.data("target")).data("chart");
            o(t, a),
                function(e, a) {
                    if (void 0 !== e.data("prefix") || void 0 !== e.data("prefix")) {
                        var t = e.data("prefix") ? e.data("prefix") : "",
                            n = e.data("suffix") ? e.data("suffix") : "";
                        a.options.scales.yAxes[0].ticks.callback = function(e) {
                            if (!(e % 10)) return t + e + n
                        }, a.options.tooltips.callbacks.label = function(e, a) {
                            var i = a.datasets[e.datasetIndex].label || "",
                                o = e.yLabel,
                                l = "";
                            return a.datasets.length > 1 && (l += '<span class="popover-body-label mr-auto">' + i + "</span>"), l += '<span class="popover-body-value">' + t + o + n + "</span>"
                        }
                    }
                }(e, t), t.update()
        }
        return window.Chart && o(Chart, (e = {
            defaults: {
                global: {
                    responsive: !0,
                    maintainAspectRatio: !1,
                    defaultColor: "dark" == t ? i.gray[700] : i.gray[600],
                    defaultFontColor: "dark" == t ? i.gray[700] : i.gray[600],
                    defaultFontFamily: n.base,
                    defaultFontSize: 13,
                    layout: {
                        padding: 0
                    },
                    legend: {
                        display: !1,
                        position: "bottom",
                        labels: {
                            usePointStyle: !0,
                            padding: 16
                        }
                    },
                    elements: {
                        point: {
                            radius: 0,
                            backgroundColor: i.theme.primary
                        },
                        line: {
                            tension: .4,
                            borderWidth: 4,
                            borderColor: i.theme.primary,
                            backgroundColor: i.transparent,
                            borderCapStyle: "rounded"
                        },
                        rectangle: {
                            backgroundColor: i.theme.warning
                        },
                        arc: {
                            backgroundColor: i.theme.primary,
                            borderColor: "dark" == t ? i.gray[800] : i.white,
                            borderWidth: 4
                        }
                    },
                    tooltips: {
                        enabled: !0,
                        mode: "index",
                        intersect: !1
                    }
                },
                doughnut: {
                    cutoutPercentage: 83,
                    legendCallback: function(e) {
                        var a = e.data,
                            t = "";
                        return a.labels.forEach(function(e, n) {
                            var i = a.datasets[0].backgroundColor[n];
                            t += '<span class="chart-legend-item">', t += '<i class="chart-legend-indicator" style="background-color: ' + i + '"></i>', t += e, t += "</span>"
                        }), t
                    }
                }
            }
        }, Chart.scaleService.updateScaleDefaults("linear", {
            gridLines: {
                borderDash: [2],
                borderDashOffset: [2],
                color: "dark" == t ? i.gray[900] : i.gray[300],
                drawBorder: !1,
                drawTicks: !1,
                lineWidth: 0,
                zeroLineWidth: 0,
                zeroLineColor: "dark" == t ? i.gray[900] : i.gray[300],
                zeroLineBorderDash: [2],
                zeroLineBorderDashOffset: [2]
            },
            ticks: {
                beginAtZero: !0,
                padding: 10,
                callback: function(e) {
                    if (!(e % 10)) return e
                }
            }
        }), Chart.scaleService.updateScaleDefaults("category", {
            gridLines: {
                drawBorder: !1,
                drawOnChartArea: !1,
                drawTicks: !1
            },
            ticks: {
                padding: 20
            },
            maxBarThickness: 10
        }), e)), a.on({
            change: function() {
                var e = $(this);
                e.is("[data-add]") && l(e)
            },
            click: function() {
                var e = $(this);
                e.is("[data-update]") && r(e)
            }
        }), {
            colors: i,
            fonts: n,
            mode: t
        }
    }(),
    CopyIcon = function() {
        var e, a = ".btn-icon-clipboard",
            t = $(a);
        t.length && ((e = t).tooltip().on("mouseleave", function() {
            e.tooltip("hide")
        }), new ClipboardJS(a).on("success", function(e) {
            $(e.trigger).attr("title", "Copied!").tooltip("_fixTitle").tooltip("show").attr("title", "Copy to clipboard").tooltip("_fixTitle"), e.clearSelection()
        }))
    }(),
    Navbar = function() {
        var e = $(".navbar-nav, .navbar-nav .nav"),
            a = $(".navbar .collapse"),
            t = $(".navbar .dropdown");
        a.on({
            "show.bs.collapse": function() {
                var t;
                (t = $(this)).closest(e).find(a).not(t).collapse("hide")
            }
        }), t.on({
            "hide.bs.dropdown": function() {
                var e, a;
                e = $(this), (a = e.find(".dropdown-menu")).addClass("close"), setTimeout(function() {
                    a.removeClass("close")
                }, 200)
            }
        })
    }(),
    NavbarCollapse = function() {
        $(".navbar-nav");
        var e = $(".navbar .navbar-custom-collapse");
        e.length && (e.on({
            "hide.bs.collapse": function() {
                e.addClass("collapsing-out")
            }
        }), e.on({
            "hidden.bs.collapse": function() {
                e.removeClass("collapsing-out")
            }
        }))
    }(),
    Popover = function() {
        var e = $('[data-toggle="popover"]'),
            a = "";
        e.length && e.each(function() {
            ! function(e) {
                e.data("color") && (a = "popover-" + e.data("color"));
                var t = {
                    trigger: "focus",
                    template: '<div class="popover ' + a + '" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'
                };
                e.popover(t)
            }($(this))
        })
    }(),
    ScrollTo = function() {
        var e = $(".scroll-me, [data-scroll-to], .toc-entry a");

        function a(e) {
            var a = e.attr("href"),
                t = e.data("scroll-to-offset") ? e.data("scroll-to-offset") : 0,
                n = {
                    scrollTop: $(a).offset().top - t
                };
            $("html, body").stop(!0, !0).animate(n, 600), event.preventDefault()
        }
        e.length && e.on("click", function(e) {
            a($(this))
        })
    }(),
    Tooltip = function() {
        var e = $('[data-toggle="tooltip"]');
        e.length && e.tooltip()
    }(),
    Checklist = function() {
        var e = $('[data-toggle="checklist"]');

        function a(e) {
            e.is(":checked") ? e.closest(".checklist-item").addClass("checklist-item-checked") : e.closest(".checklist-item").removeClass("checklist-item-checked")
        }
        e.length && (e.each(function() {
            $(this).find('.checklist-entry input[type="checkbox"]').each(function() {
                a($(this))
            })
        }), e.find('input[type="checkbox"]').on("change", function() {
            a($(this))
        }))
    }(),
    FormControl = function() {
        var e = $(".form-control");
        e.length && e.on("focus blur", function(e) {
            $(this).parents(".form-group").toggleClass("focused", "focus" === e.type)
        }).trigger("blur")
    }(),
    color = "#5e72e4";

function initMap() {
    map = document.getElementById("map-default"), lat = map.getAttribute("data-lat"), lng = map.getAttribute("data-lng");
    var e = new google.maps.LatLng(lat, lng),
        a = {
            zoom: 12,
            scrollwheel: !1,
            center: e,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
    map = new google.maps.Map(map, a);
    var t = new google.maps.Marker({
            position: e,
            map: map,
            animation: google.maps.Animation.DROP,
            title: "Hello World!"
        }),
        n = new google.maps.InfoWindow({
            content: '<div class="info-window-content"><h2>Argon Dashboard PRO</h2><p>A beautiful premium dashboard for Bootstrap 4.</p></div>'
        });
    google.maps.event.addListener(t, "click", function() {
        n.open(map, t)
    })
}($map = $("#map-default")).length && google.maps.event.addDomListener(window, "load", initMap);
var $map, map, lat, lng;
color = "#5e72e4";

function initMap() {
    map = document.getElementById("map-custom"), lat = map.getAttribute("data-lat"), lng = map.getAttribute("data-lng");
    var e = new google.maps.LatLng(lat, lng),
        a = {
            zoom: 12,
            scrollwheel: !1,
            center: e,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            styles: [{
                featureType: "administrative",
                elementType: "labels.text.fill",
                stylers: [{
                    color: "#444444"
                }]
            }, {
                featureType: "landscape",
                elementType: "all",
                stylers: [{
                    color: "#f2f2f2"
                }]
            }, {
                featureType: "poi",
                elementType: "all",
                stylers: [{
                    visibility: "off"
                }]
            }, {
                featureType: "road",
                elementType: "all",
                stylers: [{
                    saturation: -100
                }, {
                    lightness: 45
                }]
            }, {
                featureType: "road.highway",
                elementType: "all",
                stylers: [{
                    visibility: "simplified"
                }]
            }, {
                featureType: "road.arterial",
                elementType: "labels.icon",
                stylers: [{
                    visibility: "off"
                }]
            }, {
                featureType: "transit",
                elementType: "all",
                stylers: [{
                    visibility: "off"
                }]
            }, {
                featureType: "water",
                elementType: "all",
                stylers: [{
                    color: color
                }, {
                    visibility: "on"
                }]
            }]
        };
    map = new google.maps.Map(map, a);
    var t = new google.maps.Marker({
            position: e,
            map: map,
            animation: google.maps.Animation.DROP,
            title: "Hello World!"
        }),
        n = new google.maps.InfoWindow({
            content: '<div class="info-window-content"><h2>Argon Dashboard PRO</h2><p>A beautiful premium dashboard for Bootstrap 4.</p></div>'
        });
    google.maps.event.addListener(t, "click", function() {
        n.open(map, t)
    })
}($map = $("#map-custom")).length && google.maps.event.addDomListener(window, "load", initMap);
var BarStackedChart = function() {
        var e, a, t, n, i = $("#chart-bar-stacked");
        i.length && (e = i, a = function() {
            return Math.round(100 * Math.random())
        }, t = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
                label: "Dataset 1",
                backgroundColor: Charts.colors.theme.danger,
                data: [a(), a(), a(), a(), a(), a(), a()]
            }, {
                label: "Dataset 2",
                backgroundColor: Charts.colors.theme.primary,
                data: [a(), a(), a(), a(), a(), a(), a()]
            }, {
                label: "Dataset 3",
                backgroundColor: Charts.colors.theme.success,
                data: [a(), a(), a(), a(), a(), a(), a()]
            }]
        }, n = new Chart(e, {
            type: "bar",
            data: t,
            options: {
                tooltips: {
                    mode: "index",
                    intersect: !1
                },
                responsive: !0,
                scales: {
                    xAxes: [{
                        stacked: !0
                    }],
                    yAxes: [{
                        stacked: !0
                    }]
                }
            }
        }), e.data("chart", n))
    }(),
    DoughnutChart = function() {
        var e, a, t, n = $("#chart-doughnut");
        n.length && (e = n, a = function() {
            return Math.round(100 * Math.random())
        }, t = new Chart(e, {
            type: "doughnut",
            data: {
                labels: ["Danger", "Warning", "Success", "Primary", "Info"],
                datasets: [{
                    data: [a(), a(), a(), a(), a()],
                    backgroundColor: [Charts.colors.theme.danger, Charts.colors.theme.warning, Charts.colors.theme.success, Charts.colors.theme.primary, Charts.colors.theme.info],
                    label: "Dataset 1"
                }]
            },
            options: {
                responsive: !0,
                legend: {
                    position: "top"
                },
                animation: {
                    animateScale: !0,
                    animateRotate: !0
                }
            }
        }), e.data("chart", t))
    }(),
    PieChart = function() {
        var e, a, t, n = $("#chart-pie");
        n.length && (e = n, a = function() {
            return Math.round(100 * Math.random())
        }, t = new Chart(e, {
            type: "pie",
            data: {
                labels: ["Danger", "Warning", "Success", "Primary", "Info"],
                datasets: [{
                    data: [a(), a(), a(), a(), a()],
                    backgroundColor: [Charts.colors.theme.danger, Charts.colors.theme.warning, Charts.colors.theme.success, Charts.colors.theme.primary, Charts.colors.theme.info],
                    label: "Dataset 1"
                }]
            },
            options: {
                responsive: !0,
                legend: {
                    position: "top"
                },
                animation: {
                    animateScale: !0,
                    animateRotate: !0
                }
            }
        }), e.data("chart", t))
    }(),
    PointsChart = function() {
        var e, a, t = $("#chart-points");
        t.length && (e = t, a = new Chart(e, {
            type: "line",
            options: {
                scales: {
                    yAxes: [{
                        gridLines: {
                            color: Charts.colors.gray[200],
                            zeroLineColor: Charts.colors.gray[200]
                        },
                        ticks: {}
                    }]
                }
            },
            data: {
                labels: ["May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Performance",
                    data: [10, 18, 28, 23, 28, 40, 36, 46, 52],
                    pointRadius: 10,
                    pointHoverRadius: 15,
                    showLine: !1
                }]
            }
        }), e.data("chart", a))
    }(),
    SalesChart = function() {
        var e, a, t = $("#chart-sales-dark");
        t.length && (e = t, a = new Chart(e, {
            type: "line",
            options: {
                scales: {
                    yAxes: [{
                        gridLines: {
                            color: Charts.colors.gray[700],
                            zeroLineColor: Charts.colors.gray[700]
                        },
                        ticks: {}
                    }]
                }
            },
            data: {
                labels: ["May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Performance",
                    data: [0, 20, 10, 30, 15, 40, 20, 60, 60]
                }]
            }
        }), e.data("chart", a))
    }(),
    BarsChart = (SalesChart = function() {
        var e, a, t = $("#chart-sales");
        t.length && (e = t, a = new Chart(e, {
            type: "line",
            options: {
                scales: {
                    yAxes: [{
                        gridLines: {
                            color: Charts.colors.gray[200],
                            zeroLineColor: Charts.colors.gray[200]
                        },
                        ticks: {}
                    }]
                }
            },
            data: {
                labels: ["May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Performance",
                    data: [0, 20, 10, 30, 15, 40, 20, 60, 60]
                }]
            }
        }), e.data("chart", a))
    }(), function() {
        var e = $("#chart-bars");
        e.length && function(e) {
            var a = new Chart(e, {
                type: "bar",
                data: {
                    labels: ["Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: "Sales",
                        data: [25, 20, 30, 22, 17, 29]
                    }]
                }
            });
            e.data("chart", a)
        }(e)
    }()),
    LineChart = function() {
        var e, a, t = $("#chart-line");
        t.length && (e = t, a = new Chart(e, {
            type: "line",
            options: {
                scales: {
                    yAxes: [{
                        gridLines: {
                            color: Charts.colors.gray[200],
                            zeroLineColor: Charts.colors.gray[200]
                        },
                        ticks: {}
                    }]
                }
            },
            data: {
                labels: ["May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                datasets: [{
                    label: "Performance",
                    data: [0, 20, 10, 30, 15, 40, 20, 60, 60]
                }]
            }
        }), e.data("chart", a))
    }();
if ($('[data-toggle="widget-calendar"]')[0]) {
    $('[data-toggle="widget-calendar"]').fullCalendar({
        contentHeight: "auto",
        theme: !1,
        buttonIcons: {
            prev: " ni ni-bold-left",
            next: " ni ni-bold-right"
        },
        header: {
            right: "next",
            center: "title, ",
            left: "prev"
        },
        defaultDate: "2018-12-01",
        editable: !0,
        events: [{
            title: "Call with Dave",
            start: "2018-11-18",
            end: "2018-11-18",
            className: "bg-red"
        }, {
            title: "Lunch meeting",
            start: "2018-11-21",
            end: "2018-11-22",
            className: "bg-orange"
        }, {
            title: "All day conference",
            start: "2018-11-29",
            end: "2018-11-29",
            className: "bg-green"
        }, {
            title: "Meeting with Mary",
            start: "2018-12-01",
            end: "2018-12-01",
            className: "bg-blue"
        }, {
            title: "Winter Hackaton",
            start: "2018-12-03",
            end: "2018-12-03",
            className: "bg-red"
        }, {
            title: "Digital event",
            start: "2018-12-07",
            end: "2018-12-09",
            className: "bg-warning"
        }, {
            title: "Marketing event",
            start: "2018-12-10",
            end: "2018-12-10",
            className: "bg-purple"
        }, {
            title: "Dinner with Family",
            start: "2018-12-19",
            end: "2018-12-19",
            className: "bg-red"
        }, {
            title: "Black Friday",
            start: "2018-12-23",
            end: "2018-12-23",
            className: "bg-blue"
        }, {
            title: "Cyber Week",
            start: "2018-12-02",
            end: "2018-12-02",
            className: "bg-yellow"
        }]
    });
    var mYear = moment().format("YYYY"),
        mDay = moment().format("dddd, MMM D");
    $(".widget-calendar-year").html(mYear), $(".widget-calendar-day").html(mDay)
}
var DatatableBasic = function() {
        var e = $("#datatable-basic");
        e.length && e.on("init.dt", function() {
            $("div.dataTables_length select").removeClass("custom-select custom-select-sm")
        }).DataTable({
            keys: !0,
            select: {
                style: "multi"
            },
            language: {
                paginate: {
                    previous: "<i class='fas fa-angle-left'>",
                    next: "<i class='fas fa-angle-right'>"
                }
            }
        })
    }(),
    DatatableButtons = function() {
        var e, a = $("#datatable-buttons");
        a.length && (e = {
            lengthChange: !1,
            dom: "Bfrtip",
            buttons: ["copy", "print"],
            language: {
                paginate: {
                    previous: "<i class='fas fa-angle-left'>",
                    next: "<i class='fas fa-angle-right'>"
                }
            }
        }, a.on("init.dt", function() {
            $(".dt-buttons .btn").removeClass("btn-secondary").addClass("btn-sm btn-default")
        }).DataTable(e))
    }(),
    Dropzones = function() {
        var e = $('[data-toggle="dropzone"]'),
            a = $(".dz-preview");
        e.length && (Dropzone.autoDiscover = !1, e.each(function() {
            var e, t, n, i, o;
            e = $(this), t = void 0 !== e.data("dropzone-multiple"), n = e.find(a), i = void 0, o = {
                url: e.data("dropzone-url"),
                thumbnailWidth: null,
                thumbnailHeight: null,
                previewsContainer: n.get(0),
                previewTemplate: n.html(),
                maxFiles: t ? null : 1,
                acceptedFiles: t ? null : "image/*",
                init: function() {
                    this.on("addedfile", function(e) {
                        !t && i && this.removeFile(i), i = e
                    })
                }
            }, n.html(""), e.dropzone(o)
        }))
    }(),
    Datepicker = function() {
        var e = $(".datepicker");
        e.length && e.each(function() {
            $(this).datepicker({
                disableTouchKeyboard: !0,
                autoclose: !1
            })
        })
    }(),
    noUiSlider = function() {
        if ($(".input-slider-container")[0] && $(".input-slider-container").each(function() {
                var e = $(this).find(".input-slider"),
                    a = e.attr("id"),
                    t = e.data("range-value-min"),
                    n = e.data("range-value-max"),
                    i = $(this).find(".range-slider-value"),
                    o = i.attr("id"),
                    l = i.data("range-value-low"),
                    r = document.getElementById(a),
                    s = document.getElementById(o);
                noUiSlider.create(r, {
                    start: [parseInt(l)],
                    connect: [!0, !1],
                    range: {
                        min: [parseInt(t)],
                        max: [parseInt(n)]
                    }
                }), r.noUiSlider.on("update", function(e, a) {
                    s.textContent = e[a]
                })
            }), $("#input-slider-range")[0]) {
            var e = document.getElementById("input-slider-range"),
                a = document.getElementById("input-slider-range-value-low"),
                t = document.getElementById("input-slider-range-value-high"),
                n = [a, t];
            noUiSlider.create(e, {
                start: [parseInt(a.getAttribute("data-range-value-low")), parseInt(t.getAttribute("data-range-value-high"))],
                connect: !0,
                range: {
                    min: parseInt(e.getAttribute("data-range-value-min")),
                    max: parseInt(e.getAttribute("data-range-value-max"))
                }
            }), e.noUiSlider.on("update", function(e, a) {
                n[a].textContent = e[a]
            })
        }
    }(),
    Scrollbar = function() {
        var e = $(".scrollbar-inner");
        e.length && e.scrollbar().scrollLock()
    }(),
    Fullcalendar = function() {
        var e, a, t = $('[data-toggle="calendar"]');
        t.length && (a = {
            header: {
                right: "",
                center: "",
                left: ""
            },
            buttonIcons: {
                prev: "calendar--prev",
                next: "calendar--next"
            },
            theme: !1,
            selectable: !0,
            selectHelper: !0,
            editable: !0,
            events: [{
                id: 1,
                title: "Call with Dave",
                start: "2018-11-18",
                allDay: !0,
                className: "bg-red",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 2,
                title: "Lunch meeting",
                start: "2018-11-21",
                allDay: !0,
                className: "bg-orange",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 3,
                title: "All day conference",
                start: "2018-11-29",
                allDay: !0,
                className: "bg-green",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 4,
                title: "Meeting with Mary",
                start: "2018-12-01",
                allDay: !0,
                className: "bg-blue",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 5,
                title: "Winter Hackaton",
                start: "2018-12-03",
                allDay: !0,
                className: "bg-red",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 6,
                title: "Digital event",
                start: "2018-12-07",
                allDay: !0,
                className: "bg-warning",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 7,
                title: "Marketing event",
                start: "2018-12-10",
                allDay: !0,
                className: "bg-purple",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 8,
                title: "Dinner with Family",
                start: "2018-12-19",
                allDay: !0,
                className: "bg-red",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 9,
                title: "Black Friday",
                start: "2018-12-23",
                allDay: !0,
                className: "bg-blue",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }, {
                id: 10,
                title: "Cyber Week",
                start: "2018-12-02",
                allDay: !0,
                className: "bg-yellow",
                description: "Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
            }],
            dayClick: function(e) {
                var a = moment(e).toISOString();
                $("#new-event").modal("show"), $(".new-event--title").val(""), $(".new-event--start").val(a), $(".new-event--end").val(a)
            },
            viewRender: function(a) {
                e.fullCalendar("getDate").month(), $(".fullcalendar-title").html(a.title)
            },
            eventClick: function(e, a) {
                $("#edit-event input[value=" + e.className + "]").prop("checked", !0), $("#edit-event").modal("show"), $(".edit-event--id").val(e.id), $(".edit-event--title").val(e.title), $(".edit-event--description").val(e.description)
            }
        }, (e = t).fullCalendar(a), $("body").on("click", ".new-event--add", function() {
            var a = $(".new-event--title").val(),
                t = {
                    Stored: [],
                    Job: function() {
                        var e = Date.now().toString().substr(6);
                        return this.Check(e) ? this.Job() : (this.Stored.push(e), e)
                    },
                    Check: function(e) {
                        for (var a = 0; a < this.Stored.length; a++)
                            if (this.Stored[a] == e) return !0;
                        return !1
                    }
                };
            "" != a ? (e.fullCalendar("renderEvent", {
                id: t.Job(),
                title: a,
                start: $(".new-event--start").val(),
                end: $(".new-event--end").val(),
                allDay: !0,
                className: $(".event-tag input:checked").val()
            }, !0), $(".new-event--form")[0].reset(), $(".new-event--title").closest(".form-group").removeClass("has-danger"), $("#new-event").modal("hide")) : ($(".new-event--title").closest(".form-group").addClass("has-danger"), $(".new-event--title").focus())
        }), $("body").on("click", "[data-calendar]", function() {
            var a = $(this).data("calendar"),
                t = $(".edit-event--id").val(),
                n = $(".edit-event--title").val(),
                i = $(".edit-event--description").val(),
                o = $("#edit-event .event-tag input:checked").val(),
                l = e.fullCalendar("clientEvents", t);
            "update" === a && ("" != n ? (l[0].title = n, l[0].description = i, l[0].className = [o], console.log(o), e.fullCalendar("updateEvent", l[0]), $("#edit-event").modal("hide")) : ($(".edit-event--title").closest(".form-group").addClass("has-error"), $(".edit-event--title").focus())), "delete" === a && ($("#edit-event").modal("hide"), setTimeout(function() {
                swal({
                    title: "Are you sure?",
                    text: "You won't be able to revert this!",
                    type: "warning",
                    showCancelButton: !0,
                    buttonsStyling: !1,
                    confirmButtonClass: "btn btn-danger",
                    confirmButtonText: "Yes, delete it!",
                    cancelButtonClass: "btn btn-secondary"
                }).then(a => {
                    a.value && (e.fullCalendar("removeEvents", t), swal({
                        title: "Deleted!",
                        text: "The event has been deleted.",
                        type: "success",
                        buttonsStyling: !1,
                        confirmButtonClass: "btn btn-primary"
                    }))
                })
            }, 200))
        }), $("body").on("click", "[data-calendar-view]", function(a) {
            a.preventDefault(), $("[data-calendar-view]").removeClass("active"), $(this).addClass("active");
            var t = $(this).attr("data-calendar-view");
            e.fullCalendar("changeView", t)
        }), $("body").on("click", ".fullcalendar-btn-next", function(a) {
            a.preventDefault(), e.fullCalendar("next")
        }), $("body").on("click", ".fullcalendar-btn-prev", function(a) {
            a.preventDefault(), e.fullCalendar("prev")
        }))
    }(),
    VectorMap = function() {
        var e = $('[data-toggle="vectormap"]'),
            a = {
                gray: {
                    100: "#f6f9fc",
                    200: "#e9ecef",
                    300: "#dee2e6",
                    400: "#ced4da",
                    500: "#adb5bd",
                    600: "#8898aa",
                    700: "#525f7f",
                    800: "#32325d",
                    900: "#212529"
                },
                theme: {
                    default: "#172b4d",
                    primary: "#5e72e4",
                    secondary: "#f4f5f7",
                    info: "#11cdef",
                    success: "#2dce89",
                    danger: "#f5365c",
                    warning: "#fb6340"
                },
                black: "#12263F",
                white: "#FFFFFF",
                transparent: "transparent"
            };
        e.length && e.each(function() {
            var e, t;
            e = $(this), t = {
                map: e.data("map"),
                zoomOnScroll: !1,
                scaleColors: ["#f00", "#0071A4"],
                normalizeFunction: "polynomial",
                hoverOpacity: .7,
                hoverColor: !1,
                backgroundColor: a.transparent,
                regionStyle: {
                    initial: {
                        fill: a.gray[200],
                        "fill-opacity": .8,
                        stroke: "none",
                        "stroke-width": 0,
                        "stroke-opacity": 1
                    },
                    hover: {
                        fill: a.gray[300],
                        "fill-opacity": .8,
                        cursor: "pointer"
                    },
                    selected: {
                        fill: "yellow"
                    },
                    selectedHover: {}
                },
                markerStyle: {
                    initial: {
                        fill: a.theme.warning,
                        "stroke-width": 0
                    },
                    hover: {
                        fill: a.theme.info,
                        "stroke-width": 0
                    }
                },
                markers: [{
                    latLng: [41.9, 12.45],
                    name: "Vatican City"
                }, {
                    latLng: [43.73, 7.41],
                    name: "Monaco"
                }, {
                    latLng: [35.88, 14.5],
                    name: "Malta"
                }, {
                    latLng: [1.3, 103.8],
                    name: "Singapore"
                }, {
                    latLng: [1.46, 173.03],
                    name: "Kiribati"
                }, {
                    latLng: [-21.13, -175.2],
                    name: "Tonga"
                }, {
                    latLng: [15.3, -61.38],
                    name: "Dominica"
                }, {
                    latLng: [-20.2, 57.5],
                    name: "Mauritius"
                }, {
                    latLng: [26.02, 50.55],
                    name: "Bahrain"
                }],
                series: {
                    regions: [{
                        values: {
                            AU: 760,
                            BR: 550,
                            CA: 120,
                            DE: 1300,
                            FR: 540,
                            GB: 690,
                            GE: 200,
                            IN: 200,
                            RO: 600,
                            RU: 300,
                            US: 2920
                        },
                        scale: [a.gray[400], a.gray[500]],
                        normalizeFunction: "polynomial"
                    }]
                }
            }, e.vectorMap(t), e.find(".jvectormap-zoomin").addClass("btn btn-sm btn-primary"), e.find(".jvectormap-zoomout").addClass("btn btn-sm btn-primary")
        })
    }(),
    Lavalamp = function() {
        var e = $('[data-toggle="lavalamp"]');
        e.length && e.each(function() {
            $(this).lavalamp({
                setOnClick: !1,
                enableHover: !0,
                margins: !0,
                autoUpdate: !0,
                duration: 200
            })
        })
    }(),
    SortList = function() {
        var e = $('[data-toggle="list"]'),
            a = $("[data-sort]");
        e.length && e.each(function() {
            var e;
            e = $(this), new List(e.get(0), function(e) {
                return {
                    valueNames: e.data("list-values"),
                    listClass: e.data("list-class") ? e.data("list-class") : "list"
                }
            }(e))
        }), a.on("click", function() {
            return !1
        })
    }(),
    Notify = function() {
        var e = $('[data-toggle="notify"]');
        e.length && e.on("click", function(e) {
            e.preventDefault(),
                function(e, a, t, n, i, o) {
                    $.notify({
                        icon: t,
                        title: " Bootstrap Notify",
                        message: "Turning standard Bootstrap alerts into awesome notifications",
                        url: ""
                    }, {
                        element: "body",
                        type: n,
                        allow_dismiss: !0,
                        placement: {
                            from: e,
                            align: a
                        },
                        offset: {
                            x: 15,
                            y: 15
                        },
                        spacing: 10,
                        z_index: 1080,
                        delay: 2500,
                        timer: 25e3,
                        url_target: "_blank",
                        mouse_over: !1,
                        animate: {
                            enter: i,
                            exit: o
                        },
                        template: '<div data-notify="container" class="alert alert-dismissible alert-{0} alert-notify" role="alert"><span class="alert-icon" data-notify="icon"></span> <div class="alert-text"</div> <span class="alert-title" data-notify="title">{1}</span> <span data-notify="message">{2}</span></div><button type="button" class="close" data-notify="dismiss" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>'
                    })
                }($(this).attr("data-placement"), $(this).attr("data-align"), $(this).attr("data-icon"), $(this).attr("data-type"), $(this).attr("data-animation-in"), $(this).attr("data-animation-out"))
        })
    }(),
    OnScreen = function() {
        var e, a = $('[data-toggle="on-screen"]');
        a.length && (e = {
            container: window,
            direction: "vertical",
            doIn: function() {},
            doOut: function() {},
            tolerance: 200,
            throttle: 50,
            toggleClass: "on-screen",
            debug: !1
        }, a.onScreen(e))
    }(),
    QuillEditor = function() {
        var e = $('[data-toggle="quill"]');
        e.length && e.each(function() {
            var e, a;
            e = $(this), a = e.data("quill-placeholder"), new Quill(e.get(0), {
                modules: {
                    toolbar: [
                        ["bold", "italic"],
                        ["link", "blockquote", "code", "image"],
                        [{
                            list: "ordered"
                        }, {
                            list: "bullet"
                        }]
                    ]
                },
                placeholder: a,
                theme: "snow"
            })
        })
    }(),
    Select2 = function() {
        var e = $('[data-toggle="select"]');
        e.length && e.each(function() {
            $(this).select2({})
        })
    }(),
    Tags = function() {
        var e = $('[data-toggle="tags"]');
        e.length && e.each(function() {
            $(this).tagsinput({
                tagClass: "badge badge-primary"
            })
        })
    }();