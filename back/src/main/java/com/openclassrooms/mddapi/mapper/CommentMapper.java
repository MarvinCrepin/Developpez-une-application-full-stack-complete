package com.openclassrooms.mddapi.mapper;

import com.openclassrooms.mddapi.dto.user.CommentDTO;
import com.openclassrooms.mddapi.dto.user.PostDTO;
import com.openclassrooms.mddapi.models.Comment;
import com.openclassrooms.mddapi.models.Post;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.services.CommentService;
import com.openclassrooms.mddapi.services.PostService;
import com.openclassrooms.mddapi.services.SubjectService;
import com.openclassrooms.mddapi.services.UserService;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Arrays;
import java.util.Collections;
import java.util.Optional;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring", uses = {CommentService.class}, imports = {Arrays.class, Collectors.class, Post.class, User.class, Collections.class, Optional.class})
public abstract class CommentMapper implements EntityMapper<CommentDTO, Comment> {

    @Autowired
    CommentService commentService;
    @Autowired
    UserService userService;



    @Mappings({
            @Mapping(source = "content", target = "content"),
            @Mapping(source = "createdDate", target = "createdDate"),
            @Mapping(source = "user.username", target = "username"),
            @Mapping(source = "post.id", target = "postId"),
    })
    public abstract CommentDTO toDto(Comment comment);
}
