jQuery ->
  $('#sala_curso_id').change ->
    curso_id = $(this).find(":selected").val()
    $.get("/cursos/#{curso_id}/matriculados")