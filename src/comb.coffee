swap = require "./swap"

###*
 * Comb sort
 * @see https://en.wikipedia.org/wiki/Comb_sort
 * @param {Array} array
 * @return {Array}
 *###
cocktailSort = (array) ->
    array = array.slice()

    gap = array.length
    swapped = false

    while swapped || gap > 1
      gap = parseInt(gap / 1.247) if gap > 1

      swapped = false

      i = 0
      while i + gap < array.length
        if array[i] > array[i + gap]
          swap(array, i, i + gap)
          swapped = true
        i++

    array

module.exports = cocktailSort
