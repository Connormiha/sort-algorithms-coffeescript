swap = require "./swap"

###*
 * Cocktail sort
 * @see https://en.wikipedia.org/wiki/Cocktail_shaker_sort
 * @param {Array} array
 * @return {Array}
 *###

cocktailSort = (array) ->
    array = array.slice()

    left = 0
    right = array.length - 1
    swapped = true

    while left < right && swapped
      swapped = false

      i = left
      while i < right
        if array[i] > array[i + 1]
          swap(array, i, i + 1)
          swapped = true
        i++

      right--

      i = right
      while i > left
        if array[i] < array[i - 1]
          swap(array, i, i - 1)
          swapped = true
        i--

      left++

    array

module.exports = cocktailSort
