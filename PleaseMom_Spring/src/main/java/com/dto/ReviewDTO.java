package com.dto;

public class ReviewDTO {
	private int review_num;
	private String review_content;
	private int review_star;
	private MemberDTO memberDto;
	private BoardDTO boardDto;
	
	public ReviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewDTO(int review_num, String review_content, int review_star, MemberDTO memberDto, BoardDTO boardDto) {
		super();
		this.review_num = review_num;
		this.review_content = review_content;
		this.review_star = review_star;
		this.memberDto = memberDto;
		this.boardDto = boardDto;
	}
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	public MemberDTO getMemberDto() {
		return memberDto;
	}
	public void setMemberDto(MemberDTO memberDto) {
		this.memberDto = memberDto;
	}
	public BoardDTO getBoardDto() {
		return boardDto;
	}
	public void setBoardDto(BoardDTO boardDto) {
		this.boardDto = boardDto;
	}
	@Override
	public String toString() {
		return "ReviewDTO [review_num=" + review_num + ", review_content=" + review_content + ", review_star="
				+ review_star + ", memberDto=" + memberDto + ", boardDto=" + boardDto + "]";
	}
}
