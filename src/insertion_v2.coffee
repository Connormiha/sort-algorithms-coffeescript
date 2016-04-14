swap = require "./swap"

###*
 * Insertion sort
 * @see https://en.wikipedia.org/wiki/Insertion_sort
 * @param {Array} array
 * @return {Array}
 ###
insertionSort = (array) ->
  array = array.slice()

  j = 1
  i = 1

  while i < array.length
    if j == 0 || array[j] >= array[j - 1]
      i++
      j = i
      continue

    swap(array, j, j - 1)
    j--

  array

module.exports = insertionSort
