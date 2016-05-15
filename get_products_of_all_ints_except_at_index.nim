proc get_products_of_all_ints_except_at_index(int_list:  var openArray[int]): seq[int] =

  result = @[int]
  if int_list.len == 0:
    return
  if int_list.len == 1:
    result = @int_list
    return
  # var 
  for i in int_list.low..int_list.high:
  	result.add( int_list[i])
    echo ( int_list[i] )
  echo( "Длина массива ", int_list.len, " элементов" )

when isMainModule:
  var int_list = @[1, 7, 3, 4]
  echo ( @get_products_of_all_ints_except_at_index(int_list) )                                         
