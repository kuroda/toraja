$ ->
  $("div#canvas").dblclick (e) ->
    [x, y] = positionOfNewBlock(e)
    $.post '/blocks', block: { x: x, y: y }, (block_id) ->
      block = $("<div class='block' style='left: #{x}px; top: #{y}px;' />").
        data("blockId", block_id).
        draggable(containment: "parent").css(position: "absolute")
      $(e.target).append(block)

  $("div.block").draggable(containment: "parent").css(position: "absolute")

  $(document).on "dragstop", "div.block", (e) ->
    block = $(e.target)
    blockId = block.data("blockId")
    x = parseInt(block.css("left"))
    y = parseInt(block.css("top"))
    $.ajax "/blocks/#{blockId}", type: "PUT", data: { block: { x: x, y: y } }
		
positionOfNewBlock = (e) ->
  canvas = $(e.target)
  x = e.pageX - canvas.position().left
  y = e.pageY - canvas.position().top
  [x, y]
