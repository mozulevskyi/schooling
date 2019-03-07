function getMinElementInSortedArray(sortedArr) {
  if (!sortedArr || sortedArr.length === 0) {
    return undefined;
  }

  // if array is sorted w/o shift OR contains just single element
  let start = 0;
  let end = sortedArr.length - 1;
  if (sortedArr.length === 1 || sortedArr[start] <= sortedArr[end]) {
    return sortedArr[0];
  }

  while (end - start > 1) {
    let midle = Math.round((end + start)/2);

    // if we found min element in the first part of array
    if (sortedArr[start] > sortedArr[midle]) {
      end = midle;
    }

    // if we found min element in the second part of array
    if (sortedArr[midle] > sortedArr[end]) {
      start = midle;
    }
  }

  let minElement = sortedArr[start] < sortedArr[end] ? sortedArr[start] : sortedArr[end];
  return alert(`The number is: ${minElement}`);
}

// console.info("Min Element of Arr(3 4 5 6 7 8 1 2) is ", getMinElementInSortedArray([3, 4, 5, 6, 7, 8, 1, 2]));