-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change

-- users before faeture change
select id, firstname, lastname, login_timestamp from user left join login_history where user.id=login_history.user_id and login_timestamp < strftime('%s','2018-06-02');


-- users after faeture change
select id, firstname, lastname, login_timestamp from user left join login_history where user.id=login_history.user_id and login_timestamp > strftime('%s','2018-06-02');



-- PART 2: Create a SQL query that indicates the number of status changes by card

select cardID, count(cardID) as numOfStatus from card_change_history group by cardID;



