SELECT a.ename,dept.dname,b.empno,s.grade
FROM  emp as a,dept,emp as b,salgrade as s
WHERE a.sal>(SELECT AVG(sal)from emp)
AND a.deptno=dept.deptno
AND a.mgr=b.empno
AND a.sal BETWEEN s.losal AND s.hisal;