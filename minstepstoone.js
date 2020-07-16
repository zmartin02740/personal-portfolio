function minStepsToOne(n) {
  function traverse(current) {
    if (current === 1) {
      return 0;
    }


    // subtract 1
    let steps = traverse(current - 1)

    // divide by 3
    if (current % 3 === 0) {
      let divide3 = traverse(current / 3)
      steps = Math.min(steps, divide3)
    }

    if (current % 2 === 0) {
      let divide2 = traverse(current / 3)
      steps = Math.min(steps, divide2)
    }

    return steps + 1;
  }

  traverse(n)
}

function minStepsToOneMemo(n) {
  let cache = {}

  function traverse(current) {
    if (current in cache) {
      return cache[current]
    }

    if (current === 1) {
      return 0;
    }


    // subtract 1
    let steps = traverse(current - 1)

    // divide by 3
    if (current % 3 === 0) {
      let divide3 = traverse(current / 3)
      steps = Math.min(steps, divide3)
    }

    if (current % 2 === 0) {
      let divide2 = traverse(current / 2)
      steps = Math.min(steps, divide2)
    }

    cache[current] = steps + 1

    return steps + 1;
  }

  traverse(n)
}

tabulation

function minStepToOneTab(n) {
  let result = new Array(n + 1);
  result[1] = 0;

  for (let i = 2; i < result.length; i++) {
    // subtract 1
    let steps = traverse(current - 1)

    // divide by 3
    if (current % 3 === 0) {
      let divide3 = traverse(current / 3)
      steps = Math.min(steps, divide3)
    }

    if (current % 2 === 0) {
      let divide2 = traverse(current / 2)
      steps = Math.min(steps, divide2)
    }

    result[i] = steps + 1;

  }
  return result[n]
}