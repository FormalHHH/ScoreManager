package com.njucs.scoremanage.domain.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Version;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

@Entity
@Table(name = "T_USER")
public class User implements Serializable {

    /**
     * serial version id.
     */
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "USER_ID", unique = true, nullable = false)
    private Integer id;

    @Column(name = "USER_NAME", nullable = false)
    private String name;

    @Column(name = "USER_GRADE", nullable = false)
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

	public void setGrade(Integer i) {
		this.grade = i;
	}

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this,
                ToStringStyle.SHORT_PREFIX_STYLE);
    }
}
