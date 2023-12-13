
1.Создать таблицы реакций и комментариев

CREATE TABLE reactions (
   reaction_id int,
   user_id int,
   video_id int,
   created_at timestamp,
 --type_reaction ?(понимаю, что должен быть вид реакции, но пока не знаю каким типом это поле обозначить)

);

CREATE TABLE comments (
    comment_id int,
    created_at timestamp,
    user_id int,
    video_id int,
    comment_text text
    
);

2.Добавить несколько записей в каждую таблицу выше

INSERT INTO reactions (reaction_id, user_id, comment_id, created_at)
VALUES
     (1, 1, 1,CURRENT_TIMESTAMP),
     (2, 3, 5,CURRENT_TIMESTAMP),
     (3, 4, 4,CURRENT_TIMESTAMP),
     (4, 1, 5,CURRENT_TIMESTAMP),
     (5, 3, 3,CURRENT_TIMESTAMP)

INSERT INTO comments (comment_id, created_at, user_id, video_id, comment_text)
VALUES
     (1,CURRENT_TIMESTAMP, 1, 1, 'xzcvbnm'),
     (2,CURRENT_TIMESTAMP, 3, 5, 'mnbvcxsdfghjk'),
     (3,CURRENT_TIMESTAMP, 4, 2, 'rtyuioplkjhg'),
     (4,CURRENT_TIMESTAMP, 2, 5, 'mnbvcxdfghujiko'),
     (5,CURRENT_TIMESTAMP, 3, 3, 'fegrthjklujyh')