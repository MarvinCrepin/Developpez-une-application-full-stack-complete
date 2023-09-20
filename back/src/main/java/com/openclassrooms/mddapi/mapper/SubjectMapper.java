package com.openclassrooms.mddapi.mapper;

import com.openclassrooms.mddapi.dto.user.SubjectDTO;
import com.openclassrooms.mddapi.models.Subject;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface SubjectMapper extends EntityMapper<SubjectDTO, Subject> {
}
