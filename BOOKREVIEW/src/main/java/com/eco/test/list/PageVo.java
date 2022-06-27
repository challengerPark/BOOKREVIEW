package com.eco.test.list;

//이상민 작성

public class PageVo {

	private int currentPage;//현재 페이지
	private int cntPerPage;	//페이지 하나당 보여줄 row 갯수
	private int pageBtnCnt; //페이지 버튼 몇개 보여줄지
	private int totalRow;	//테이블의 전체 row 갯수
	
	private int startRow; 	//디비가서 조회할 rownum
	private int endRow;		//디비가서 조회할 rownum
	private int startPage;	//시작 페이지
	private int endPage;	//마지막 페이지
	private int lastPage;	//DB의 row 기준으로 마지막 페이지는 몇인지
	
	
	
																						//위로들어감
	


	public PageVo(int currentPageStr, int cntPerPage, int pageBtnCnt, int totalRow) { //PageVo ( 현제 페이지 str,페이지 하나당 보여줄 row,페이지당 버튼, 통 row개수 )
	this.currentPage = currentPageStr;								//현재페이지 = (int)(현재페이지 str)
	this.cntPerPage = cntPerPage;														//페이지 하나당 보여줄 row 개수
	this.pageBtnCnt = pageBtnCnt;														//페이지 버튼
	this.totalRow = totalRow;															//테아불의 전체 row 개수
	calc(currentPage, cntPerPage, pageBtnCnt, totalRow);								// 칼크 ()
}

private void calc(int currentPage, int cntPerPage, int pageBtnCnt, int totalRow){ 		// 컬크  위로 들어감
																				//   (현재페이지,페이지하나당 보여중 row, 하나당버튼,총 row열)
	this.setEndRow(this.getCurrentPage() * this.getCntPerPage());             //끝열   set(get 현재 페이지 * get페이지당 보여줄 row)
	this.setStartRow(this.getEndRow() - this.getCntPerPage() + 1);             //시작열  set(get 마지막열 - get(페이지당 보여줄 로우 개수 -1))
	
	int lastPage = this.getTotalRow() / this.getCntPerPage();					//디비  로우 기준 마지막 페이지 = 총로우/페이지 하나당 보여줄 로우
	if(this.getTotalRow() % this.getCntPerPage() > 0) {							//if(get 총로우 % get페이지 하나당 보여줄 롱 개수>0){     마지막 페이지 ++}
		lastPage++;
	}
	this.setLastPage(lastPage);													//set 마지막 페이지마지막페이지)
	

	int endPage = this.getCurrentPage() / this.getPageBtnCnt();					// int 마지막 페이지  = get 현재 페이지 / 버튼 몇개 보여줄지
	if(this.getCurrentPage() % this.getPageBtnCnt() > 0) {						// if(get guswovpdlwl)% get 버튼 개수 >0){   끝페이지 ++}
		endPage++;
	}

	this.setEndPage(endPage * this.getPageBtnCnt());							//set 마지막 페이지 (아지막페이지  ++  *  get페이지당버튼)
	
	this.setStartPage(this.getEndPage() - this.getPageBtnCnt() + 1);			//set 시작페이지(get 마지막페이지 - get페이지당버튼 +1)
			
	}




public int getCurrentPage() {
	return currentPage;
}

public void setCurrentPage(int currentPage) {
	this.currentPage = currentPage;
}

public int getCntPerPage() {
	return cntPerPage;
}

public void setCntPerPage(int cntPerPage) {
	this.cntPerPage = cntPerPage;
}

public int getPageBtnCnt() {
	return pageBtnCnt;
}

public void setPageBtnCnt(int pageBtnCnt) {
	this.pageBtnCnt = pageBtnCnt;
}

public int getTotalRow() {
	return totalRow;
}

public void setTotalRow(int totalRow) {
	this.totalRow = totalRow;
}

public int getStartRow() {
	return startRow;
}

public void setStartRow(int startRow) {
	this.startRow = startRow;
}

public int getEndRow() {
	return endRow;
}

public void setEndRow(int endRow) {
	this.endRow = endRow;
}

public int getStartPage() {
	return startPage;
}

public void setStartPage(int startPage) {
	this.startPage = startPage;
}

public int getEndPage() {
	return endPage;
}

public void setEndPage(int endPage) {
	this.endPage = endPage;
}

public int getLastPage() {
	return lastPage;
}

public void setLastPage(int lastPage) {
	this.lastPage = lastPage;
}

@Override
public String toString() {
	return "PageVo [currentPage=" + currentPage + ", cntPerPage=" + cntPerPage + ", pageBtnCnt=" + pageBtnCnt
			+ ", totalRow=" + totalRow + ", startRow=" + startRow + ", endRow=" + endRow + ", startPage=" + startPage
			+ ", endPage=" + endPage + ", lastPage=" + lastPage + "]";
}

public PageVo() {
	super();
}






}