package org.zerock.domain;

import lombok.Data;

@Data
public class MemberDTO {
	private int idbno;
	private String id;
	private String password;
	private String gender;
	private String name;
	private String nickname;
	private String email;
}
