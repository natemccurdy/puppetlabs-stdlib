# @summary Matches a Numeric (Integer or Float) as well as any String that looks like a Numeric.
#
# This is useful when you want to accept a number but don't care if it's quoted or not.
# For example, when the number will always be cast to a String when used.
#
# Matches:         '0', '123', 123, '0.1234', 3.141
# Does not match:  'hello', '10.10.0.1', '', false
#
type Stdlib::Number = Variant[Numeric, Pattern[/^\d*\.?\d+$/]]
