swap = require "./swap"

###*
 * Heap sort
 * @see https://en.wikipedia.org/wiki/Heapsort
 * @param {Array} array
 * @return {Array}
 *###
heapSort = (array) ->
  array = array.slice()

  i = Math.floor(array.length / 2 - 1)
  while i >= 0
    shiftDown(array, i, array.length)
    i--

  i = array.length - 1
  while i >= 1
    swap(array, 0, i)
    shiftDown(array, 0, i)
    i--

  array

###*
 * Shift down
 * @param  {Array} array
 * @param  {Number} i
 * @param  {Number} j
 *###
shiftDown = (array, i, j) ->
  done = false
  maxChild = 0

  while (i * 2 + 1 < j) && !done
    if i * 2 + 1 == j - 1
      maxChild = i * 2 + 1
    else if array[i * 2 + 1] > array[i * 2 + 2]
      maxChild = i * 2 + 1
    else
      maxChild = i * 2 + 2

    if array[i] < array[maxChild]
      swap(array, i, maxChild)
      i = maxChild
    else
      done = true


module.exports = heapSort
