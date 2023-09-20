package com.openclassrooms.mddapi.mapper;

import com.openclassrooms.mddapi.dto.PostDTO;
import com.openclassrooms.mddapi.models.Post;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.services.PostService;
import com.openclassrooms.mddapi.services.SubjectService;
import com.openclassrooms.mddapi.services.UserService;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring", uses = {PostService.class}, imports = {Arrays.class, Collectors.class, Post.class, User.class, Collections.class, Optional.class})
public abstract class PostMapper implements EntityMapper<PostDTO, Post> {

    @Autowired
    SubjectService subjectService;
    @Autowired
    UserService userService;

    @Mappings({
            @Mapping(source = "title", target = "title"),
            @Mapping(source = "content", target = "content"),
            @Mapping(source = "createdDate", target = "createdDate"),
            @Mapping(target = "subject", expression = "java(this.subjectService.findById(postDto.getSubject_id()))"),
            @Mapping(target = "author", expression = "java(this.userService.findById(postDto.getAuthor_id()))"),
    })
    public abstract Post toEntity(PostDTO postDto);


    @Mappings({
            @Mapping(source = "title", target = "title"),
            @Mapping(source = "content", target = "content"),
            @Mapping(source = "createdDate", target = "createdDate"),
            @Mapping(source = "post.subject.id", target = "subject_id"),
            @Mapping(source = "post.author.id", target = "author_id"),
    })
    public abstract PostDTO toDto(Post post);
}
