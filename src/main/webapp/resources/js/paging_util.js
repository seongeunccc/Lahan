pagingUtil = {

    /**
     *  섏씠吏뺤뿉  꾩슂   媛  議고쉶
     * @param totalCount        (number) 珥   곗씠     
     * @param pagingRow         (number)  섏씠吏    蹂댁뿬吏   곗씠     
     * @param pagingBlockCount  (number)  섏씠吏  釉붾줉   
     * @param currentPage       (number)  꾩옱  섏씠吏 
     * @return {pagingRow, totalCount, firstBlock: number, lastBlock: *, totalPage: number, pagingBlockCount, currentPage}
     */
    getPagingInfo : function (totalCount, pagingRow, pagingBlockCount, currentPage) {

        totalCount = parseInt(totalCount);
        pagingRow = parseInt(pagingRow);
        pagingBlockCount = parseInt(pagingBlockCount);
        currentPage = parseInt(currentPage);

        var totalPage = Math.ceil(totalCount / pagingRow);    //珥   섏씠吏    
        var firstBlock = "";                                     // 섏씠吏  泥ル쾲吏  釉붾줉
        var lastBlock = "";                                     // 섏씠吏  留덉 留됰쾲吏  釉붾줉

        if(currentPage % pagingBlockCount === 0){
            firstBlock = currentPage - (pagingBlockCount - 1);
            lastBlock = firstBlock + (pagingBlockCount - 1);
        }else {
            firstBlock = currentPage - currentPage % pagingBlockCount + 1;
            lastBlock = currentPage - currentPage % pagingBlockCount + pagingBlockCount;  // 섏씠吏  留덉 留됰쾲吏  釉붾줉
        }

        if(lastBlock > totalPage){
            lastBlock = totalPage;
        }

        return {
            totalCount,
            pagingRow,
            pagingBlockCount,
            currentPage,
            totalPage,
            firstBlock,
            lastBlock
        }
    },

    /**
     *  섏씠吏  釉붾줉 html
     * @param totalCount        (number) 珥   곗씠     
     * @param pagingRow         (number)  섏씠吏    蹂댁뿬吏   곗씠     
     * @param pagingBlockCount  (number)  섏씠吏  釉붾줉   
     * @param currentPage       (number)  꾩옱  섏씠吏 
     * @return html string
     */
    getPagingHtml : function (totalCount, pagingRow, pagingBlockCount, currentPage, ){
        var pagingInfo = this.getPagingInfo(totalCount, pagingRow, pagingBlockCount, currentPage);
        var pagingHtml = "";
        // pagingHtml += '<div class="pagination">';

            var goFncNm = "javascript:fncPaging";
            var prevPage = pagingInfo.firstBlock == 1 ? pagingInfo.firstBlock : pagingInfo.firstBlock - 1;
            var nextPage = pagingInfo.lastBlock >= pagingInfo.totalPage ? pagingInfo.lastBlock : pagingInfo.lastBlock + 1;
            
            if (pagingInfo.currentPage == prevPage) {
            	pagingHtml += '<a href="'+goFncNm+'(1)" class="first pagin disabled"><span class="hidden">first</span></a>';
                pagingHtml += '<a href="'+goFncNm+'('+prevPage+')" class="prev pagin disabled"><span class="hidden">prev</span></a>';
			}else {
				pagingHtml += '<a href="'+goFncNm+'(1)" class="first pagin"><span class="hidden">first</span></a>';
				pagingHtml += '<a href="'+goFncNm+'('+prevPage+')" class="prev pagin"><span class="hidden">prev</span></a>';
			}
            for(var i = pagingInfo.firstBlock; i <= pagingInfo.lastBlock; i++){
                if(pagingInfo.currentPage == i){
                    /*pagingHtml += '<span class="current"><span class="hidden"> 꾩옱 섏씠吏 </span>'+i+'</span>'*/
                	pagingHtml += '<a class="current">'+i+'</a>'
                }else {
                    pagingHtml += '<a href="'+goFncNm+'('+i+')">'+i+'</a>';
                }
            }
            if (pagingInfo.currentPage == nextPage) {
            	pagingHtml += '<a href="'+goFncNm+'('+nextPage+')" class="next pagin disabled"><span class="hidden">next</span></a>';
                pagingHtml += '<a href="'+goFncNm+'('+pagingInfo.totalPage+')" class="last pagin disabled"><span class="hidden">last</span></a>'
			}else {
				pagingHtml += '<a href="'+goFncNm+'('+nextPage+')" class="next pagin"><span class="hidden">next</span></a>';
	            pagingHtml += '<a href="'+goFncNm+'('+pagingInfo.totalPage+')" class="last pagin"><span class="hidden">last</span></a>'
			}

        // pagingHtml += '</div>';

        return pagingHtml;

    },

    getUrlPageParam : function(){
        var page = new URLSearchParams(location.search).get("page");
        page = parseInt(page);
        if(isNaN(page) || page < 1){
            page = 1;
        }
        return page;
    }



    //<div class="pagination">';
    //    <a href="#" class="first"><span class="hidden">first</span></a>';
    //    <a href="#" class="prev"><span class="hidden">prev</span></a>';
    //    <span class="current"><span class="hidden"> 꾩옱 섏씠吏 </span>1</span>';
    //    <a href="#">2</a>';
    //    <a href="#">3</a>';
    //    <a href="#" class="next"><span class="hidden">next</span></a>';
    //    <a href="#" class="last"><span class="hidden">last</span></a>';
    //</div>';









}