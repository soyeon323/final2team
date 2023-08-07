-- EXTRA_WORK_CATEGORY
INSERT INTO EXTRA_WORK_CATEGORY(NO, CATEGORY) VALUES (0,'연장');
INSERT INTO EXTRA_WORK_CATEGORY(NO, CATEGORY) VALUES (1,'야간');
INSERT INTO EXTRA_WORK_CATEGORY(NO, CATEGORY) VALUES (2,'휴일');

-- EXTRA_WORK
INSERT INTO "EXTRA_WORK" ("NO", "USER_NO", "TYPE_NO", "ENROLLDATE", "START_TIME", "END_TIME", "APPROVAL_STATUS", "REASON")
    VALUES (SEQ_EXTRA_WORK_NO.NEXTVAL, 1, 0, '20230727', '1800', '2000', 1, '특별한 이유로 인한 추가 근무');
INSERT INTO "EXTRA_WORK" ("NO", "USER_NO", "TYPE_NO", "ENROLLDATE", "START_TIME", "END_TIME", "APPROVAL_STATUS", "REASON")
    VALUES (SEQ_EXTRA_WORK_NO.NEXTVAL, 1, 1, '20230727', '1900', '2000', 2, '외부 회의로 인한 추가 근무');
INSERT INTO "EXTRA_WORK" ("NO", "USER_NO", "TYPE_NO", "ENROLLDATE", "START_TIME", "END_TIME", "APPROVAL_STATUS", "REASON")
    VALUES (SEQ_EXTRA_WORK_NO.NEXTVAL, 1, 0, '20230726', '1900', '2100', 1, '긴급 업무로 인한 추가 근무');
INSERT INTO "EXTRA_WORK" ("NO", "USER_NO", "TYPE_NO", "ENROLLDATE", "START_TIME", "END_TIME", "APPROVAL_STATUS", "REASON")
    VALUES (SEQ_EXTRA_WORK_NO.NEXTVAL, 1, 1, '20230726', '1830', '2030', 2, '데이터 분석 작업으로 인한 추가 근무');
INSERT INTO "EXTRA_WORK" ("NO", "USER_NO", "TYPE_NO", "ENROLLDATE", "START_TIME", "END_TIME", "APPROVAL_STATUS", "REASON")
    VALUES (SEQ_EXTRA_WORK_NO.NEXTVAL, 1, 0, '20230725', '1900', '2200', 0, '중요한 고객과의 회의로 인한 추가 근무');

-- ATTENDANCE_CURRENT
INSERT INTO ATTENDANCE_CURRENT(NO, TYPE) VALUES (0, '결근');
INSERT INTO ATTENDANCE_CURRENT(NO, TYPE) VALUES (1, '정상출근');
INSERT INTO ATTENDANCE_CURRENT(NO, TYPE) VALUES (2, '휴가');
INSERT INTO ATTENDANCE_CURRENT(NO, TYPE) VALUES (3, '출장');
INSERT INTO ATTENDANCE_CURRENT(NO, TYPE) VALUES (4, '외근');
INSERT INTO ATTENDANCE_CURRENT(NO, TYPE) VALUES (5, '업무');
INSERT INTO ATTENDANCE_CURRENT(NO, TYPE) VALUES (6, '지각');

-- ATTENDANCE
--CREATE TABLE "ATTENDANCE" (
--	"NO"	NUMBER		NOT NULL,
--	"USER_NO"	NUMBER		NOT NULL,
--	"CURRENT_NO"	NUMBER		NOT NULL,
--	"ENROLLDATE"	TIMESTAMP	DEFAULT SYSDATE	NULL,
--	"CHECK_IN_TIME"	TIMESTAMP	DEFAULT SYSDATE	NULL,
--	"CHECK_OUT_TIME"	TIMESTAMP	DEFAULT SYSDATE	NULL,
--	"PLUS_WORK_TIME"	TIMESTAMP		NULL,
--	"TOTAL_WORK_TIME"	TIMESTAMP		NULL,
--	"OBJECTION_REASON"	VARCHAR2(500)		NULL,
--	"APPROVAL_STATUS"	NUMBER	DEFAULT 0	NULL
--);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/07/10', TO_TIMESTAMP('2023-07-10 08:53:03', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-10 18:02:34', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, PLUS_WORK_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/07/11', TO_TIMESTAMP('2023-07-11 08:57:03', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-11 18:01:34', 'YYYY-MM-DD HH24:MI:SS'), INTERVAL '1' HOUR, null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/07/12', TO_TIMESTAMP('2023-07-12 08:55:55', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-12 18:00:27', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/07/13', TO_TIMESTAMP('2023-07-13 08:53:03', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-13 18:02:34', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 3, 0, '2023/07/13', NULL, NULL, '출장이였어요');
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 2, 0, '2023/07/13', NULL, NULL, '출장이였어요');
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 4, 0, '2023/07/13', NULL, NULL, '출장이였어요');
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/07/14', TO_TIMESTAMP('2023-07-14 08:48:01', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-14 18:04:01', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 6, '2023/07/17', TO_TIMESTAMP('2023-07-17 09:05:59', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-17 18:10:12', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 2, 6, '2023/07/17', TO_TIMESTAMP('2023-07-17 09:05:59', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-17 18:10:12', 'YYYY-MM-DD HH24:MI:SS'), '사실은 늦고싶지 않았어요');
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, PLUS_WORK_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/07/18', TO_TIMESTAMP('2023-07-18 08:57:46', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-18 18:01:34', 'YYYY-MM-DD HH24:MI:SS'), INTERVAL '0 1:15:30' DAY TO SECOND, null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, PLUS_WORK_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 3, 6, '2023/07/18', TO_TIMESTAMP('2023-07-18 08:57:46', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-18 18:01:34', 'YYYY-MM-DD HH24:MI:SS'), INTERVAL '0 3:35:30' DAY TO SECOND, '지하철 시위로 대중교통이 지연되었어요.');
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 3, '2023/07/19', NULL, NULL,NULL);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/08/01', TO_TIMESTAMP('2023-08-01 08:59:02', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-01 18:06:18', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO ATTENDANCE(NO, USER_NO, CURRENT_NO, ENROLLDATE, CHECK_IN_TIME, CHECK_OUT_TIME, OBJECTION_REASON) 
    VALUES (SEQ_ATTENDANCE_NO.NEXTVAL, 1, 1, '2023/08/02', TO_TIMESTAMP('2023-08-02 08:53:03', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-02 18:02:34', 'YYYY-MM-DD HH24:MI:SS'), null);


-- LEAVE_TYPE
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (0, '오전 반차');
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (1, '오후 반차');
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (2, '연차');
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (3, '출산 휴가');
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (4, '결혼 휴가');
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (5, '육아 휴직');
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (6, '병가');
INSERT INTO LEAVE_TYPE (NO, TYPE) VALUES (7, '경조사');

-- LEAVE
--CREATE TABLE "LEAVE" (
--	"NO"	NUMBER		NOT NULL,
--	"USER_NO"	NUMBER		NOT NULL,
--	"LEAVE_NO"	NUMBER		NOT NULL,
--	"PROXY_NO"	NUMBER		NOT NULL,
--	"ENROLLDATE"	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
--	"REASON_CONTENT"	VARCHAR2(500)		NOT NULL,
--	"START_TIME"	TIMESTAMP		NOT NULL,
--	"END_TIME"	TIMESTAMP		NOT NULL
--);
INSERT INTO LEAVE (NO, USER_NO, LEAVE_NO, PROXY_NO, ENROLLDATE, REASON_CONTENT, START_TIME, END_TIME) 
    VALUES (SEQ_LEAVE_NO.NEXTVAL, 1, 7, 1, '2023/07/03', '형제 결혼식 예정으로 참여', '2023/07/03','2023/07/03');
INSERT INTO LEAVE (NO, USER_NO, LEAVE_NO, PROXY_NO, ENROLLDATE, REASON_CONTENT, START_TIME, END_TIME) 
    VALUES (SEQ_LEAVE_NO.NEXTVAL, 1, 6, 1, '2023/07/20', '정기 건강검진 예정', '2023/07/20', '2023/07/20');
INSERT INTO LEAVE (NO, USER_NO, LEAVE_NO, PROXY_NO, ENROLLDATE, REASON_CONTENT, START_TIME, END_TIME) 
    VALUES (SEQ_LEAVE_NO.NEXTVAL, 1, 2, 1, '2023/07/26', '하루 정도는 쉬어줘야겠습니다', '2023/07/26', '2023/07/26');
INSERT INTO LEAVE (NO, USER_NO, LEAVE_NO, PROXY_NO, ENROLLDATE, REASON_CONTENT, START_TIME, END_TIME, STATUS) 
    VALUES (SEQ_LEAVE_NO.NEXTVAL, 1, 2, 1, '2023/08/01', '가족행사가 있어서 참여해야 할 것 같습니다', TO_TIMESTAMP('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO LEAVE (NO, USER_NO, LEAVE_NO, PROXY_NO, ENROLLDATE, REASON_CONTENT, START_TIME, END_TIME, STATUS) 
    VALUES (SEQ_LEAVE_NO.NEXTVAL, 1, 2, 1, '2023/08/01', '가족행사가 있어서 참여해야 할 것 같습니다', TO_TIMESTAMP('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO LEAVE (NO, USER_NO, LEAVE_NO, PROXY_NO, ENROLLDATE, REASON_CONTENT, START_TIME, END_TIME, STATUS) 
    VALUES (SEQ_LEAVE_NO.NEXTVAL, 1, 6, 1, '2023/08/17', '몸이 크게 안좋아 안정을 취해야한다는 진단을 받았습니다', TO_TIMESTAMP('2023-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);


-- CALENDAR_TYPE
INSERT INTO CALENDAR_TYPE (NO, TYPE, COLOR) VALUES (0, '개인', 'orange');
INSERT INTO CALENDAR_TYPE (NO, TYPE, COLOR) VALUES (1, '부서', 'green');
INSERT INTO CALENDAR_TYPE (NO, TYPE, COLOR) VALUES (2, '회사', 'blue');
INSERT INTO CALENDAR_TYPE (NO, TYPE, COLOR) VALUES (3, '회의', 'pink');

-- CALENDAR
-- TYPE_NO : 0 (개인)
INSERT INTO CALENDAR (NO, USER_NO, TYPE_NO, REV_NO, TITLE, CONTENT, START_TIME, END_TIME, PLACE, STATUS) 
    VALUES (SEQ_CALENDAR_NO.NEXTVAL, 1, 0, NULL, '서류 작성', '오늘 동물들 아팠던 일 기록해두기', TO_TIMESTAMP('2023-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 0);
INSERT INTO CALENDAR (NO, USER_NO, TYPE_NO, REV_NO, TITLE, CONTENT, START_TIME, END_TIME, PLACE, STATUS) 
    VALUES (SEQ_CALENDAR_NO.NEXTVAL, 1, 0, NULL, '푸바오 먹이주기', '푸바오 사료 새로 찾아서 먹이줘야하니까 사이트 잘 찾아보기', TO_TIMESTAMP('2023-07-24 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-24 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), '푸바오 우리', 0);
INSERT INTO CALENDAR (NO, USER_NO, TYPE_NO, REV_NO, TITLE, CONTENT, START_TIME, END_TIME, PLACE, STATUS) 
    VALUES (SEQ_CALENDAR_NO.NEXTVAL, 2, 0, NULL, '개인미팅', '거래처하고 미팅 준비해야하니까 준비물 챙겨가기', TO_TIMESTAMP('2023-08-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 0);
-- TYPE_NO : 1 (부서)
INSERT INTO CALENDAR (NO, USER_NO, TYPE_NO, REV_NO, TITLE, CONTENT, START_TIME, END_TIME, PLACE, STATUS) 
    VALUES (SEQ_CALENDAR_NO.NEXTVAL, 1, 1, NULL, '회식', '사유없이 빠지지 마세요', TO_TIMESTAMP('2023-08-11 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-11 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), '회사 앞 곱창집', 0);
-- TYPE_NO : 2 (회사)
INSERT INTO CALENDAR (NO, USER_NO, TYPE_NO, REV_NO, TITLE, CONTENT, START_TIME, END_TIME, PLACE, STATUS) 
    VALUES (SEQ_CALENDAR_NO.NEXTVAL, 1, 2, NULL, 'new동물 환영식', '동물원에 새로운 동물친구(원숭이)가 들어와요~ 다 같이 참고해서 신경 써주세요', TO_TIMESTAMP('2023-08-11 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-11 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), '원숭이zone', 0);
INSERT INTO CALENDAR (NO, USER_NO, TYPE_NO, REV_NO, TITLE, CONTENT, START_TIME, END_TIME, PLACE, STATUS) 
    VALUES (SEQ_CALENDAR_NO.NEXTVAL, 1, 2, NULL, '조기퇴근의 날', '회사의 특별한 날입니다. 모두들 행복한 오후 보내세요.', TO_TIMESTAMP('2023-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 0);
-- TYPE_NO : 3 (회의)
INSERT INTO CALENDAR (NO, USER_NO, TYPE_NO, REV_NO, TITLE, CONTENT, START_TIME, END_TIME, PLACE, STATUS) 
    VALUES (SEQ_CALENDAR_NO.NEXTVAL, 1, 1, 1, '(부서)회의', '안건 : 담당 업무 중 디테일한 수정사항 자료 준비해오세요', TO_TIMESTAMP('2023-08-03 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-08-03 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 0);

-- MEETINGROOM
INSERT INTO MEETINGROOM (NO, NAME, INFO, ENROLLDATE, MODIFYDATE, ORIGIN_NAME, CHANGE_NAME, CAPACITY) 
    VALUES (SEQ_MEETINGROOM_NO.NEXTVAL, '101호', '170㎡ 규모, 최대 120명 수용, 전시실로 적합, 회의장 용도로 사용 시 별도 문의', '2017/02/03', NULL, NULL, NULL, 13);
INSERT INTO MEETINGROOM (NO, NAME, INFO, ENROLLDATE, MODIFYDATE, ORIGIN_NAME, CHANGE_NAME, CAPACITY) 
    VALUES (SEQ_MEETINGROOM_NO.NEXTVAL, '102호', '170㎡ 규모, 최대 120명 수용, 전시실로 적합, 회의장 용도로 사용 시 별도 문의', '2019/02/03', NULL, NULL, NULL, 20);    
INSERT INTO MEETINGROOM (NO, NAME, INFO, ENROLLDATE, MODIFYDATE, ORIGIN_NAME, CHANGE_NAME, CAPACITY) 
    VALUES (SEQ_MEETINGROOM_NO.NEXTVAL, '103호', '170㎡ 규모, 최대 120명 수용, 전시실로 적합, 회의장 용도로 사용 시 별도 문의', '2021/02/03', NULL, NULL, NULL, 10);
INSERT INTO MEETINGROOM (NO, NAME, INFO, ENROLLDATE, MODIFYDATE, ORIGIN_NAME, CHANGE_NAME, CAPACITY) 
    VALUES (SEQ_MEETINGROOM_NO.NEXTVAL, '104호', '170㎡ 규모, 최대 120명 수용, 전시실로 적합, 회의장 용도로 사용 시 별도 문의', '2021/02/03', NULL, NULL, NULL, 10);
INSERT INTO MEETINGROOM (NO, NAME, INFO, ENROLLDATE, MODIFYDATE, ORIGIN_NAME, CHANGE_NAME, CAPACITY) 
    VALUES (SEQ_MEETINGROOM_NO.NEXTVAL, '105호', '170㎡ 규모, 최대 120명 수용, 전시실로 적합, 회의장 용도로 사용 시 별도 문의', '2022/02/03', NULL, NULL, NULL, 20);
INSERT INTO MEETINGROOM (NO, NAME, INFO, ENROLLDATE, MODIFYDATE, ORIGIN_NAME, CHANGE_NAME, CAPACITY) 
    VALUES (SEQ_MEETINGROOM_NO.NEXTVAL, '106호', '170㎡ 규모, 최대 120명 수용, 전시실로 적합, 회의장 용도로 사용 시 별도 문의', '2022/02/03', NULL, NULL, NULL, 15);
INSERT INTO MEETINGROOM (NO, NAME, INFO, ENROLLDATE, MODIFYDATE, ORIGIN_NAME, CHANGE_NAME, CAPACITY) 
    VALUES (SEQ_MEETINGROOM_NO.NEXTVAL, '107호', '170㎡ 규모, 최대 120명 수용, 전시실로 적합, 회의장 용도로 사용 시 별도 문의', '2022/02/03', NULL, NULL, NULL, 9);

-- MEETINGROOM_RESERVATION
--INSERT INTO MEETINGROOM_RESERVATION (NO, MEETINGROOM_NO, DATE, START_TIME, END_TIME)
--    VALUES (SEQ_MEETINGROOM_RESERVATION_NO.NEXTVAL, 1, '2023/08/03', 2, 4);
INSERT INTO MEETINGROOM_RESERVATION ("NO", "MEETINGROOM_NO", "DATE", "START_TIME", "END_TIME")
    VALUES (SEQ_MEETINGROOM_RESERVATION_NO.NEXTVAL, 1, TO_DATE('2023/08/03', 'YYYY/MM/DD'), 2, 4);


COMMIT;