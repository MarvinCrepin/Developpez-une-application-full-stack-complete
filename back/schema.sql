
    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table posts (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        subject_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table subjects (
       id bigint not null auto_increment,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table subscriptions (
       id bigint not null auto_increment,
        subject_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table users (
       id bigint not null auto_increment,
        created_at datetime(6),
        email varchar(255),
        password varchar(255),
        updated_at datetime(6),
        username varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table users 
       add constraint UK6dotkott2kjsp8vw4d0m25fb7 unique (email);

    alter table comments 
       add constraint FKh4c7lvsc298whoyd4w9ta25cr 
       foreign key (post_id) 
       references posts (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FK5lidm6cqbc7u4xhqpxm898qme 
       foreign key (user_id) 
       references users (id);

    alter table posts 
       add constraint FKk31c8ca9t9q3hp8w73ymubhap 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FK8ejb8e2fndtnpalu38hbn7cvv 
       foreign key (subject_id) 
       references subjects (id);

    alter table subscriptions 
       add constraint FKhro52ohfqfbay9774bev0qinr 
       foreign key (user_id) 
       references users (id);
