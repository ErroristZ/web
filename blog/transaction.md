Mysql 事务#

 	事务：事务是最小工作的单位，其中的操作不是全部都做，就是全部不做。

 	事务的特性：一致性、持久性、隔离性、原子性

 	原子性：一个事务的所有操作，不是全部完成，就是全部不完成。

 	一致性：事务必须使数据库从一个一致性变换到另外一个一致性状态。事务按照预期生效，数据的状态是预期的状态。

 	隔离性：事务的隔离性是指多个事务同时访问数据时，不被其他的事务的操作数据干扰，多个并发事务之间需要隔离。

 	持久性：事务结束后，对操作的数据就是永久的，即使数据库故障也不会有影响。


 	事务的并发：

 	多个事务同时进行操作，就会出现脏读、幻读、不可重复读。

 	脏读：当一个事务读取到另外一个事务未提交的更新数据，叫做脏读。

 	不可重复读：是指一个事务可以读取到其他事务已提交的数据（只是对修改操作）。

 	幻读：一个事务内读取到其他事务插入的数据，或者读取不到其他事务删除的数据，导致前后不一致（是指插入和删除）。


 	事务的隔离级别：读未提交、读已提交、可重复读、串行化

 	读未提交：是指一个事务的修改没有提交，对其他的事务都能可见的。

 	读已提交：是指事务提交前，所做的修改对其他的事务是不可见的。

 	可重复读：同一个事务中多次读取同样的记录时是一致的。MYSQL默认是可重复读

 	串行化：强制事务串行执行。


 	事务隔离级别会产生的并发问题：

	读未提交	
	√脏读
	√不可重复读
	√幻读


	读已提交
	×脏读
	√不可重复读
	√幻读


	可重复读
	×脏读
	×不可重复读
	√幻读


	串行化
	×脏读
	×不可重复读
	×幻读