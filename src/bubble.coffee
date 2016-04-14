swap = require "./swap"

###*
 * Bubble sort
 * @see https://en.wikipedia.org/wiki/Bubble_sort
 * @param {Array} array
 * @return {Array}
 ###
bubbleSort = (array) ->
    array = array.slice()

    i = array.length - 1
    while i > 0
      j = 0
      while j < i
        swap(array, j, j + 1) if array[j] > array[j + 1]
        j++
      i--

    array

module.exports = bubbleSort;
