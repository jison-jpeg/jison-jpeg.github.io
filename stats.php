<div id="columnChart"></div>

<script>
    document.addEventListener("DOMContentLoaded", () => {
        new ApexCharts(document.querySelector("#columnChart"), {
            series: [{
                name: 'Colleges',
                data: [44, 55, 57, 56, 61, 58]
            }],
            chart: {
                type: 'bar',
                height: 660,
                toolbar: {
                    show: false
                }
            },
            plotOptions: {
                bar: {
                    horizontal: false,
                    columnWidth: '55%',
                    endingShape: 'rounded'
                },
            },
            dataLabels: {
                enabled: true
            },
            stroke: {
                show: true,
                width: 2,
                colors: ['transparent']
            },
            xaxis: {
                categories: ['COA', 'CAS', 'COB', 'COE', 'CON', 'COT'],
                title: {
                    text: 'Colleges'
                }
            },
            yaxis: {
                title: {
                    text: 'Students Enrolled'
                }
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                y: {
                    formatter: function (val) {
                        return val + " Students"
                    }
                }
            }
        }).render();
    });
</script>

<!-- End Column Chart -->

</div>