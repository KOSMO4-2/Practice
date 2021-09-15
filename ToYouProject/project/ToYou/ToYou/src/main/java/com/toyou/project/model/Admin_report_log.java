package com.toyou.project.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Admin_report_log {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int report_log_no;
	
	@Column(nullable = false)
	public int user_no;
	
	@Column(nullable = false,length = 100)
	private String report_log_title;

	@Column(nullable = false,length = 2048)
	private String report_log_content;
	
	@CreationTimestamp
	private Timestamp report_log_date;
	
	@ColumnDefault("1")
	@Column(nullable = false)
	private int report_log_isclear;
	
	
	@Column
	private Timestamp report_log_cleardate;
	
}
