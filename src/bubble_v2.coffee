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
  j = 0

  while i > 0
    if j == i
      j = 0
      i--
      continue

    swap(array, j, j + 1) if array[j] > array[j + 1]
    j++

  array

module.exports = bubbleSort
