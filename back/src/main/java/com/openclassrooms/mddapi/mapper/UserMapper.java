package com.openclassrooms.mddapi.mapper;

import com.openclassrooms.mddapi.dto.user.UserDTO;
import com.openclassrooms.mddapi.models.User;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Component;

@Mapper(componentModel = "spring")
public interface UserMapper extends EntityMapper<UserDTO, User> {
}
