package com.dto;


public class TravelHistoryDTO {
	private int th_num;
	private MemberDTO th_req_num;
	private MemberDTO th_gui_num;
	private String th_case;
	
	public TravelHistoryDTO() {
		// TODO Auto-generated constructor stub
	}

	public TravelHistoryDTO(int th_num, MemberDTO th_req_num, MemberDTO th_gui_num, String th_case) {
		super();
		this.th_num = th_num;
		this.th_req_num = th_req_num;
		this.th_gui_num = th_gui_num;
		this.th_case = th_case;
	}

	public int getTh_num() {
		return th_num;
	}

	public void setTh_num(int th_num) {
		this.th_num = th_num;
	}

	public MemberDTO getTh_req_num() {
		return th_req_num;
	}

	public void setTh_req_num(MemberDTO th_req_num) {
		this.th_req_num = th_req_num;
	}

	public MemberDTO getTh_gui_num() {
		return th_gui_num;
	}

	public void setTh_gui_num(MemberDTO th_gui_num) {
		this.th_gui_num = th_gui_num;
	}

	public String getTh_case() {
		return th_case;
	}

	public void setTh_case(String th_case) {
		this.th_case = th_case;
	}

	@Override
	public String toString() {
		return "TravelHistoryDTO [th_num=" + th_num + ", th_req_num=" + th_req_num + ", th_gui_num=" + th_gui_num
				+ ", th_case=" + th_case + "]";
	}
	
}
