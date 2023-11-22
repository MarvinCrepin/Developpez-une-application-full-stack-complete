package com.openclassrooms.mddapi.controllers;

import com.openclassrooms.mddapi.dto.CommentDTO;
import com.openclassrooms.mddapi.dto.SubjectDTO;
import com.openclassrooms.mddapi.mapper.CommentMapper;
import com.openclassrooms.mddapi.mapper.SubjectMapper;
import com.openclassrooms.mddapi.models.*;
import com.openclassrooms.mddapi.payload.request.CommentRequest;
import com.openclassrooms.mddapi.services.CommentService;
import com.openclassrooms.mddapi.services.PostService;
import com.openclassrooms.mddapi.services.SubjectService;
import com.openclassrooms.mddapi.services.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("/api/subject")
public class SubjectController {

    private final SubjectService subjectService;

    private final SubjectMapper subjectMapper;

    SubjectController(SubjectService subjectService, SubjectMapper subjectMapper) {
        this.subjectService = subjectService;
        this.subjectMapper = subjectMapper;
    }

    @GetMapping("")
    public ResponseEntity<?> findAll() {
        List<Subject> subjects = this.subjectService.findAll();
        return ResponseEntity.ok().body(this.subjectMapper.toDto(subjects));
    }


}
