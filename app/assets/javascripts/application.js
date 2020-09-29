//= require jquery
//= require rails-ujs
//= require_tree .
//= require moment
//= require fullcalendar

$(function () {
  $('#calendar').fullCalendar({
    
    events: '/events.json',
    //カレンダー上部を年月で表示させる
    titleFormat: 'YYYY年 M月',
    //曜日を日本語表示
    dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
    dayNames: ['日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日'],
    allDayText: '終日',
    //ボタンのレイアウト
    header: {
        left: 'month,agendaWeek,agendaDay',
        center: 'title',
        right: 'today prev,next'
    },
    //終了時刻がないイベントの表示間隔
    defaultTimedEventDuration: '03:00:00',
    buttonText: {
        prev: '前月',
        next: '次月',
        prevYear: '前年',
        nextYear: '翌年',
        today: '今日',
        month: '月',
        week: '週',
        day: '日'
    },
    //イベントの時間表示を２４時間に
    timeFormat: "HH:mm",
    //イベントの色を変える
    eventColor: '#63ceef',
    //イベントの文字色を変える
    eventTextColor: '#000000',
    // Drag & Drop & Resize
    editable: true,

    navLinks: true,
    selectable: true,
    selectHelper: true,

    
});

// $(function(){
//     $('#Form-c').on('submit', function(e){
//     if ( comment.temperature_id >= 26 ) {
//         ('fc-day-grid-event(@event)').insertAdjacentHTML('<span>▲</span>');
//     } else {
//         ('fc-day-grid-event(@event)').insertAdjacentHTML('<span>◎</span>');
//     }
//     })
// })



  // 画面遷移を検知
  $(document).on('turbolinks:load', function () {
      if ($('#calendar').length) {

          function Calendar() {
              return $('#calendar').fullCalendar({
              });
          }
          function clearCalendar() {
              $('#calendar').html('');
          }

          $(document).on('turbolinks:load', function () {
              Calendar();
          });
          $(document).on('turbolinks:before-cache', clearCalendar);

          //events: '/events.json', 以下に追加
          $('#calendar').fullCalendar({
              events: '/events.json',
              //カレンダー上部を年月で表示させる
              titleFormat: 'YYYY年 M月',
              //曜日を日本語表示
              dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
              //ボタンのレイアウト
            
              header: {
                  left: '',
                  center: 'title,month,agendaWeek,agendaDay',
                  right: 'today prev,next'
              },
              //終了時刻がないイベントの表示間隔
              defaultTimedEventDuration: '03:00:00',
              // Drag & Drop & Resize
              editable: true,
              //イベントの時間表示を２４時間に
              timeFormat: "HH:mm",
              //イベントの色を変える
              eventColor: '#87cefa',
              //イベントの文字色を変える
              eventTextColor: '#000000',
              eventRender: function(event, element) {
                  element.css("font-size", "0.8em");
                  element.css("padding", "5px");
              }
          });
      }
  });
});

$('#calendar').fullCalendar({
    height: window.innerHeight - 100, // ①
    windowResize: function () { // ②
      $('#calendar').fullCalendar('option', 'height', window.innerHeight - 100);
    }
  });