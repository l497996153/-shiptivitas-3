-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change

select count(distinct(user_id)) as dailyAvgUsers,  DATE(login_timestamp, 'unixepoch') as loginDate from login_history where login_timestamp > strftime('%s','2018-06-02') group by loginDate
union
select count(distinct(user_id)) as dailyAvgUsers,  DATE(login_timestamp, 'unixepoch') as loginDate from login_history where login_timestamp < strftime('%s','2018-06-02') group by loginDate;


-- PART 2: Create a SQL query that indicates the number of status changes by card

select cardID, count(cardID) as numOfStatus from card_change_history group by cardID;



