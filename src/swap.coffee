###*
 * Swaps array elements
 * @param {Array} array
 * @param {Number} int1
 * @param {Number} int2
 ###
swap = (array, int1, int2) ->
  unless array[int1]? || array[int2]?
    throw new Error "
        int1 is #{int1} - #{array[int1]}
        int2 is #{int2} - #{array[int2]}
      "

  oldInt1 = array[int1]

  array[int1] = array[int2]
  array[int2] = oldInt1


module.exports = swap
