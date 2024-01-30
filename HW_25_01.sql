
1.Найти количество сотрудников в каждом департаменте. Вывести departmentid и employees cnt

select department_id,
      count(*) as employees_cnt
       
from employees
group by department_id;

2.Найти количество сотрудников в каждом департаменте. Вывести departmentname и employees cnt

select departments.department_name,
      empl_cnt.employees_cnt
from departments
join (
 select
      count(*) as employees_cnt, department_id
	  from employees
      group by department_id) as empl_cnt
 on departments.department_id = empl_cnt.department_id;

3.Найти количество сотрудников у каждого менеджера. Вывести managerid и employees cnt

select employees.manager_id,
       employees_cnt.e_count
from employees
join(
	 select
     count(*) as e_count,
    manager_id
from employees
group by manager_id
) as employees_cnt
 on employees.manager_id = employees_cnt.manager_id
 group by manager_id;

4.Найти количество сотрудников у каждого менеджера. Вывести firstname,  lastname и employees_cnt

select employees.first_name,
       employees.last_name,
       employees_cnt.e_count
from employees
join(
	 select
     count(*) as e_count,
    manager_id
from employees
group by manager_id
) as employees_cnt
 on employees.manager_id = employees_cnt.manager_id;

5.Найти максимальную зарплату в каждом департаменте. Вывести departmentid и maxsalary

select employees.department_id, jobs.max_salary
from employees
join jobs on jobs.job_id = employees.job_id

6.Найти сотрудников, у которых наибольшая зарплата в их департаменте
-- код не работает и я не знаю почему

select employees.department_id, 
       employees.first_name, 
       employees.last_name, 
       maximal_salary.maxi_salary 
from employees
join(
    select max(salary) as maxi_salary, department_id
    from employees
    group by department_id 
) as maximal_salary
 on employees.department_id = maximal_salary.department_id
 where maximal_salary. maxi_salary = employees.salary;


7.Найти департаменты, в которых больше 10 сотрудников. Вывести department_name

select department_name,
      empl_cnt.employees_cnt
       
from departments
join (
 select
      count(*) as employees_cnt, department_id
	  from employees
      group by department_id) as empl_cnt
 on departments.department_id = empl_cnt.department_id
where employees_cnt > 10
