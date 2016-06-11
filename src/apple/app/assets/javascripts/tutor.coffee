# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
#
# $(document).on 'click', '#pay_for_ask', (event) ->
#
#     pub=$("input[name='public']").val()
#     question=$("#question").val();
#     tutor_id=$("#tutor_id").val();
#     ask_money=$("#ask_money").val();
#     url="/pay_for_ask"
#
#     data=
#         is_public:pub
#         question:question
#         tutor_id:tutor_id
#         ask_money:ask_money
#
#     $.ajax url,
#             type: 'POST'
#             dataType:'html'
#             data: data
#             error: (jqXHR, textStatus, errorThrown) ->
#             success: (html, textStatus, jqXHR) ->
#                 window.location='/pay_for_ask?result=1'

$ ->
    $('#pay_for_ask').on 'click',(e, data, status, xhr) ->

        pub=$("input[name='public']").val()
        question=$("#question").val();
        tutor_id=$("#tutor_id").val();
        ask_money=$("#ask_money").val();
        url="/pay_for_ask"

        data=
            is_public:pub
            question:question
            tutor_id:tutor_id
            ask_money:ask_money
        
        $.ajax url,
                type: 'POST'
                dataType:'html'
                data: data
                error: (jqXHR, textStatus, errorThrown) ->
                success: (html, textStatus, jqXHR) ->
                    window.location='/pay_for_ask?result=1'
