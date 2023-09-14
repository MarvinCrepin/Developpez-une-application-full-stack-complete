
    create table articles (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        title varchar(255),
        user_id bigint,
        theme_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table comments (
       id bigint not null auto_increment,
        content varchar(255),
        created_date datetime(6),
        post_id bigint,
        user_id bigint,
        primary key (id)
    ) engine=InnoDB;

    create table themes (
       id bigint not null auto_increment,
        name varchar(255),
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

    alter table articles 
       add constraint FKlc3sm3utetrj1sx4v9ahwopnr 
       foreign key (user_id) 
       references users (id);

    alter table articles 
       add constraint FKlml0ejjetiyeebfkn3cidwnob 
       foreign key (theme_id) 
       references themes (id);

    alter table comments 
       add constraint FKbgh6clyyhv857a75xrlid75ov 
       foreign key (post_id) 
       references articles (id);

    alter table comments 
       add constraint FK8omq0tc18jd43bu5tjh6jvraq 
       foreign key (user_id) 
       references users (id);
