package com.njucs.scoremanage.app.user;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

public class UserForm implements Serializable {
    /**
     * Validation group for create user
     */
    public static interface UserCreateGroup {
    }

    /**
     * Validation group for update user
     */
    public static interface UserUpdateGroup {
    }

    /**
     * Validation group for delete user
     */
    public static interface UserDeleteGroup {
    }

    /**
     * serial version uid.
     */
    private static final long serialVersionUID = 1L;

    @NotNull(groups = { UserUpdateGroup.class, UserCreateGroup.class, UserDeleteGroup.class })
    @Min(0)
    private Integer id;

    @Null(groups = { UserDeleteGroup.class })
    @NotNull(groups = { UserUpdateGroup.class, UserCreateGroup.class })
    @Size(min = 1, max = 20)
    private String name;

    @Null(groups = { UserDeleteGroup.class })
    @NotNull(groups = { UserUpdateGroup.class, UserCreateGroup.class })
    @Min(0)
    @Max(100)
    private Integer grade;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

}
