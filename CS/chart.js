var dataSource = [
        { argument: '1', value1: 120, value2: 125, value3: 112, value4: 100, value5: 457 },
        { argument: '2', value1: 150, value2: 120, value3: 135, value4: 115, value5: 520 },
        { argument: '3', value1: 170, value2: 165, value3: 168, value4: 158, value5: 661 },
        { argument: '4', value1: 157, value2: 140, value3: 120, value4: 110, value5: 527 },
        { argument: '5', value1: 180, value2: 170, value3: 160, value4: 175, value5: 685 },
        { argument: '6', value1: 211, value2: 190, value3: 200, value4: 220, value5: 821 },
    ];

var isShown = false;

function DrawChart(chartContainer) {
    if (isShown)
        return;

    $("#" + chartContainer).dxChart({
        dataSource: dataSource,
        commonSeriesSettings: {
            type: "fullstackedbar",
            label: {
                visible: false,
                connector: { visible: true }
            },
            argumentField: "argument",
            stack: "first",
            axis: "main"
        },
        tooltip: { enabled: true },
        series: [
            { valueField: "value1" },
            { valueField: "value2" },
            { valueField: "value3", stack: "second" },
            { valueField: "value4", stack: "second" }
       ],
        valueAxis: [
            { name: "main" },
            { name: "secondary", position: "right" }
       ]
    })
}