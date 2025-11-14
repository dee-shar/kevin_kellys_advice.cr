# kevin_kellys_advice.cr
Web-API for [kk-advice.koyeb.app](https://kk-advice.koyeb.app/) an API that provides access to a collection of unsolicited advice from Kevin Kelly

## Example
```cr
require "./kevin_kellys_advice"

kk_advice = KevinKellysAdvice.new
advice = kk_advice.get_random_advice()
puts advice
```
