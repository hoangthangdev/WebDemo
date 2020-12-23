var R = {
    Init: function () {
        R.RegisterEvent();
    },
    RegisterEvent: function () {
        $('#view').click(function () {
            var date = "";
            var todate = "";
            date = $('input[name=date]').val();
            todate = $('input[name=todate]').val();
            var query = "?date=" + date + "&todate=" + todate + "";
            var baseurl = window.location.pathname + query;
            window.location.href = baseurl;
        })
        $('#add').click(function () {
            window.location.href = "Add";
        })
        $('.edit').click(function () {
            var id = $(this).data('id');
            window.location.href = window.location.pathname+"Edit?id="+id+"";
        })
    }
}
$(function () {
    R.Init();
})