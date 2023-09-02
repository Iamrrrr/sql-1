We can create a index on both department and salary columns.

This is because when the salary is viewed, the department related to the salary will be viewed as often as well. So, this will help to filter the department and followed filtering on the salary range, which is more easier to be analyzed.

However, there are some drawbacks on the approach. It is undeniable that the approach will help to enhance the readability however the insertion or update will become more difficult. When the data is being modified, it will need more time to modify the index unless it will cause inconsistencies issues.



