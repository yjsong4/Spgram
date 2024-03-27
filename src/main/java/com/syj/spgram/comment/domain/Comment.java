package com.syj.spgram.comment.domain;

import java.time.LocalDateTime;

import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "comment")
@Entity
public class Comment {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="userId")
	private int userId;
	
	@Column(name="postId")
	private int postId;
	
	private String contents;
	
    @UpdateTimestamp
    @Column(name="createdAt", updatable = false)
    private LocalDateTime createdAt;
    
	@UpdateTimestamp
	@Column(name="updatedAt")
	private LocalDateTime updatedAt;
}
