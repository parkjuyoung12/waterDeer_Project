package com.water.dto;

// 기본 형태
//public enum MemberType {
//	STUD,
//	PROF
//}

// == MemberType.STUD   -> 정상 수행
// == MemberType.PROF   -> 정상 수행
// null -> (비 로그인)

public enum MemberType {
	STUD("STUD") {
		@Override
		public String toString() {
			return getValue();
		}
	},
	PROF("PROF") {
		@Override
		public String toString() {
			return getValue();
		}
	};
	
	private String value;

	private MemberType(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
	
	public void setValue(String value) {
		this.value = value ;
	}
	
}