proc get_products_of_all_ints_except_at_index(int_list: seq[int]): seq[int] =

  # result = @[]
  # newSeq( result, len )
  result = newSeq[int](int_list.len)
  if int_list.len == 0:
    return
  if int_list.len == 1:
    result = int_list
    return
  # var 
  # for i in int_list.low..int_list.high:
  var product_so_far: int
  product_so_far = 1
  for i in 0..<int_list.len:
    result[i] = product_so_far
    echo product_so_far 
    product_so_far *= int_list[i]
  product_so_far = 1
  for i in countdown(int_list.len - 1, 0):
  # for i in int_list.len-1 .. 0:
    result[i] *= product_so_far
    product_so_far *= int_list[i]
  
    # result[i] = int_list[i]
      # result.add( int_list[i])
    # echo ( int_list[i] )
  # echo( "Длина массива ", int_list.len, " элементов" )

when isMainModule:
  # var int_list = @[1, 7, 3, 4]
  echo ( get_products_of_all_ints_except_at_index( @[1, 7, 3, 4] ))
