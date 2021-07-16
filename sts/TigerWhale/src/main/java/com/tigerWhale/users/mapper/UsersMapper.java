package com.tigerWhale.users.mapper;

import com.tigerWhale.command.UsersVO;

public interface UsersMapper {
	public int idCheck(UsersVO vo); //중복체크
	public int join(UsersVO vo); //가입요청
	public UsersVO login(UsersVO vo); //로그인
	public UsersVO getInfo(String user_ID); //회원아이디로 정보를 가져오는 메서드
}
