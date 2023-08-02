function profileEditModal(){
    alert("test")
}

function goToNotice() {
    window.location.replace(root+"/notice/list");
}

function goToProject() {
    window.location.replace(root+"/project/progress");
}

function goToAttendance() {
    window.location.replace(root+"/attendance/main");
} 

function goToCommunity() {
    window.location.replace(root+"/community/board/freeBoard");
} 

$(".community-list").on("click",function(e){

    let boardNo = null;
    let listTarget = $(e.target).hasClass("community-list");

    if (!listTarget) {
        boardNo = $(e.target.parentNode).children(":last").text();
    }
    else {
        boardNo = $(e.target).children(':last').text();
    }


    window.location.replace(root+"/community/board/detail?no="+boardNo);

})