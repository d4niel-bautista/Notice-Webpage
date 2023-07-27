var dataSet = []

var user = '';
var role = 0;
var notice_id = 0;
var mode = "new";

function createLogout(text) {
    var x = document.createElement("li");
    var a = document.createElement("a");
    var s = document.createElement("span");
    s.innerHTML = text
    a.appendChild(s)
    a.setAttribute("href", "#");
    a.addEventListener('click', () => {
        user = "";
        role = 0;
        alert("Logged out!")
        location.reload(true);
        $(".top-right li").last().remove();
        var login_li = createLogin("회원가입·로그인")
        $(".top-right").append(login_li)
        can_edit()
    })
    x.appendChild(a)
    return x
}

function createLogin(text) {
    var x = document.createElement("li");
    var a = document.createElement("a");
    var s = document.createElement("span");
    s.innerHTML = text
    a.appendChild(s)
    a.setAttribute("data-bs-toggle", "modal");
    a.setAttribute("data-bs-target", "#loginModal");
    x.appendChild(a)
    return x
}

$(document).ready(function () {
    hide_admin_content();
    $(".alert").toggle()
    $("#notice-table").DataTable({
        ajax: {
            type: 'GET',
            url: '../pweng/php/content_get.php',
            data:
            {
                type: 'GET_CONTENT',
            },
            success: function (result) {

                if (result.length != 0) {
                    $.each(result, function (key, value) {
                        var child_arr = []

                        child_arr.push(value.id);
                        child_arr.push("<a href='#notice' class='notice-item' value=" + value.id + ">" + value.title + "</a>");
                        child_arr.push(value.date_posted);
                        child_arr.push(value.hits);
                        dataSet.push(child_arr)
                    })
                }

                $('#notice-table').DataTable().clear().rows.add(dataSet).draw();
                $(document).on('click', 'a.notice-item', function (e) {
                    notice_id = parseInt($(this).attr("value"))
                    clear_text_areas();
                    $(".writing-content").hide();
                    $.ajax({
                        type: "GET",
                        url: '../pweng/php/content_get.php',
                        data: {
                            type: "GET_NOTICE_CONTENT",
                            id: notice_id
                        },
                        success: function (res) {
                            
                            const myObj = JSON.parse(res)
                            
                            $("#content-title").html(myObj.title);
                            $(".notice-content-body").html(myObj.body);
                            $(".stats-date").html(myObj.date_posted);
                            $(".stats-hits").html(myObj.hits);
                            $("#notice_content").show();

                            $.ajax({
                                type: "POST",
                                url: '../pweng/php/content.php',
                                data: {
                                    type: "UPDATE_HITS",
                                    id: notice_id
                                },
                                success: function (res) {
                                }
                            })

                            reload_table();
                        }
                    })

                })
            }, error: function (request, status, error) {
                console.log(request.responseText);
            }
        },
        data: dataSet,
        info: false,
        order: [[0, 'desc']],
        searching: false,
        lengthChange: false,
        columnDefs: [{
            className: "dt-head-center",
            targets: [0, 1, 2, 3]
        },
        {
            className: "dt-body-center",
            targets: [0, 1, 2, 3]
        }],
        language: {
            paginate: {
                previous: "<",
                next: ">"
            }
        }
    },
    )

    $("#login_btn").click(function () {
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false)
        })

        $("form").removeClass('was-validated');

        $("form").validate({
            submitHandler: function (form) {

                const removeLogin = setTimeout(() => {
                    $("input").val('');
                }, 5000);
                $.ajax({
                    type: 'POST',
                    url: '../pweng/php/backend.php',
                    data: $('form').serialize(),
                    success: function (data) {
                        const myObj = JSON.parse(data);
                        if (myObj.login == 'OK') {
                            user = myObj.username;
                            role = myObj.role;
                            $(".modal").modal('toggle');
                            $(".alert").hide();
                            
                            var logout = createLogout("Logout");
                            $(".top-right li").last().remove();
                            $(".top-right").append(logout);
                            can_edit();
                        } else {
                            $(".alert").show();
                        }
                    }
                });

            },
            errorPlacement: function (event, validator) {

            }
        });
    });

    $("#content-edit").click(function () {
        mode = "editing";
        $.ajax({
            type: "GET",
            url: '../pweng/php/content_get.php',
            data: {
                type: "EDIT_NOTICE",
                id: notice_id
            },
            success: function (res) {
                const myObj = JSON.parse(res);
                tinymce.get('title').setContent(myObj.title);
                tinymce.get('content').setContent(myObj.body);
            }
        })
        $("#notice_content").hide();
        $(".writing-content").show();
        clear_text_areas();
        $(".writing-content").get(0).scrollIntoView({behavior: 'smooth'});
    })

    $("#content-close").click(function () {
        $("#notice_content").hide();
    })

    $("#add-notice").click(function () {
        mode = "new";
        $("#notice_content").hide();
        $(".writing-content").show();
        clear_text_areas();
        $(".writing-content").get(0).scrollIntoView({behavior: 'smooth'});
    })

    $("#edit-cancel").click(function () {
        clear_text_areas();
        $(".writing-content").hide();
    })

    $("#content-submit").click(function () {
        var title = tinymce.get('title').getContent();
        var content = tinymce.get('content').getContent();
        if (title !== '' && content !== '' && mode === 'new') {
            const timeElapsed = Date.now();
            const today = new Date().toISOString().replace(/T.*/, '').split('-').join('-');
            clear_text_areas();
            $(".writing-content").hide();
            $.ajax({
                async: true,
                type: 'POST',
                url: '../pweng/php/content.php',
                data:
                {
                    type: 'SAVE_CONTENT',
                    author: user,
                    title: title,
                    content: content,
                    date: today,
                    hits: 0
                },
                success: function (result) {
                    clear_text_areas();
                    alert(result);
                    reload_table();
                }
            })
            
        }else if(title !== '' && content !== '' && mode === 'editing'){
            clear_text_areas();
            $(".writing-content").hide();
            $.ajax({
                async: true,
                type: 'POST',
                url: '../pweng/php/content.php',
                data:
                {
                    type: 'UPDATE_CONTENT',
                    id: notice_id,
                    title: title,
                    content: content,
                },
                success: function (result) {
                    clear_text_areas();
                    alert(result);
                    reload_table();
                }
            })
        }
    })

});

function hide_admin_content() {
    $(".writing-content").hide();
    $("#notice_content").hide();
}

function clear_text_areas() {
    tinymce.get('title').setContent('');
    tinymce.get('content').setContent('');
}

function can_edit() {
    if (role == 1) {
        $("#edit-btn").show()
        $("#add").show()
    } else {
        $("#edit-btn").hide()
        $("#add").hide()
    }
}

function reload_table() {
    dataSet = []
    // $('#notice-table').DataTable().clear();
    $('#notice-table').DataTable().clear().rows.add(dataSet).draw();
    $('#notice-table').DataTable().ajax.reload();
    
}